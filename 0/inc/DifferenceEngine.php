<?php
/**
 * A PHP diff engine for phpwiki. (Taken from phpwiki-1.3.3)
 *
 * Additions by Axel Boldt for MediaWiki
 *
 * @copyright (C) 2000, 2001 Geoffrey T. Dairiki <dairiki@dairiki.org>
 * @license  You may copy this code freely under the conditions of the GPL.
 */
define('USE_ASSERTS', function_exists('assert'));

class _DiffOp {
    var $type;
    var $orig;
    var $closing;

    function reverse() {
        trigger_error("pure virtual", E_USER_ERROR);
    }

    function norig() {
        return $this->orig ? count($this->orig) : 0;
    }

    function nclosing() {
        return $this->closing ? count($this->closing) : 0;
    }
}

class _DiffOp_Copy extends _DiffOp {
    var $type = 'copy';

    function __construct($orig, $closing = false) {
        if (!is_array($closing))
            $closing = $orig;
        $this->orig = $orig;
        $this->closing = $closing;
    }

    function reverse() {
        return new _DiffOp_Copy($this->closing, $this->orig);
    }
}

class _DiffOp_Delete extends _DiffOp {
    var $type = 'delete';

    function __construct($lines) {
        $this->orig = $lines;
        $this->closing = false;
    }

    function reverse() {
        return new _DiffOp_Add($this->orig);
    }
}

class _DiffOp_Add extends _DiffOp {
    var $type = 'add';

    function __construct($lines) {
        $this->closing = $lines;
        $this->orig = false;
    }

    function reverse() {
        return new _DiffOp_Delete($this->closing);
    }
}

class _DiffOp_Change extends _DiffOp {
    var $type = 'change';

    function __construct($orig, $closing) {
        $this->orig = $orig;
        $this->closing = $closing;
    }

    function reverse() {
        return new _DiffOp_Change($this->closing, $this->orig);
    }
}


/**
 * Class used internally by Diff to actually compute the diffs.
 *
 * The algorithm used here is mostly lifted from the perl module
 * Algorithm::Diff (version 1.06) by Ned Konz, which is available at:
 *   http://www.perl.com/CPAN/authors/id/N/NE/NEDKONZ/Algorithm-Diff-1.06.zip
 *
 * More ideas are taken from:
 *   http://www.ics.uci.edu/~eppstein/161/960229.html
 *
 * Some ideas are (and a bit of code) are from from analyze.c, from GNU
 * diffutils-2.7, which can be found at:
 *   ftp://gnudist.gnu.org/pub/gnu/diffutils/diffutils-2.7.tar.gz
 *
 * closingly, some ideas (subdivision by NCHUNKS > 2, and some optimizations)
 * are my own.
 *
 * @author Geoffrey T. Dairiki
 * @access private
 */
class _DiffEngine {

    function diff($from_lines, $to_lines) {
        $n_from = count($from_lines);
        $n_to = count($to_lines);

        $this->xchanged = $this->ychanged = array();
        $this->xv = $this->yv = array();
        $this->xind = $this->yind = array();
        unset($this->seq);
        unset($this->in_seq);
        unset($this->lcs);

        // Skip leading common lines.
        for ($skip = 0; $skip < $n_from && $skip < $n_to; $skip++) {
            if ($from_lines[$skip] != $to_lines[$skip])
                break;
            $this->xchanged[$skip] = $this->ychanged[$skip] = false;
        }
        // Skip trailing common lines.
        $xi = $n_from;
        $yi = $n_to;
        for ($endskip = 0; --$xi > $skip && --$yi > $skip; $endskip++) {
            if ($from_lines[$xi] != $to_lines[$yi])
                break;
            $this->xchanged[$xi] = $this->ychanged[$yi] = false;
        }

        // Ignore lines which do not exist in both files.
        for ($xi = $skip; $xi < $n_from - $endskip; $xi++)
            $xhash[$from_lines[$xi]] = 1;
        for ($yi = $skip; $yi < $n_to - $endskip; $yi++) {
            $line = $to_lines[$yi];
            if (($this->ychanged[$yi] = empty($xhash[$line])))
                continue;
            $yhash[$line] = 1;
            $this->yv[] = $line;
            $this->yind[] = $yi;
        }
        for ($xi = $skip; $xi < $n_from - $endskip; $xi++) {
            $line = $from_lines[$xi];
            if (($this->xchanged[$xi] = empty($yhash[$line])))
                continue;
            $this->xv[] = $line;
            $this->xind[] = $xi;
        }

        // Find the LCS.
        $this->_compareseq(0, count($this->xv), 0, count($this->yv));

        // Merge edits when possible
        $this->_shift_boundaries($from_lines, $this->xchanged, $this->ychanged);
        $this->_shift_boundaries($to_lines, $this->ychanged, $this->xchanged);

        // Compute the edit operations.
        $edits = array();
        $xi = $yi = 0;
        while ($xi < $n_from || $yi < $n_to) {
            USE_ASSERTS && assert($yi < $n_to || $this->xchanged[$xi]);
            USE_ASSERTS && assert($xi < $n_from || $this->ychanged[$yi]);

            // Skip matching "snake".
            $copy = array();
            while ($xi < $n_from && $yi < $n_to && !$this->xchanged[$xi] && !$this->ychanged[$yi]) {
                $copy[] = $from_lines[$xi++];
                ++$yi;
            }
            if ($copy)
                $edits[] = new _DiffOp_Copy($copy);

            // Find deletes & adds.
            $delete = array();
            while ($xi < $n_from && $this->xchanged[$xi])
                $delete[] = $from_lines[$xi++];

            $add = array();
            while ($yi < $n_to && $this->ychanged[$yi])
                $add[] = $to_lines[$yi++];

            if ($delete && $add)
                $edits[] = new _DiffOp_Change($delete, $add);
            elseif ($delete)
                $edits[] = new _DiffOp_Delete($delete);
            elseif ($add)
                $edits[] = new _DiffOp_Add($add);
        }
        return $edits;
    }


    /**
     * Divide the Largest Common Subsequence (LCS) of the sequences
     * [XOFF, XLIM) and [YOFF, YLIM) into NCHUNKS approximately equally
     * sized segments.
     *
     * Returns (LCS, PTS).  LCS is the length of the LCS. PTS is an
     * array of NCHUNKS+1 (X, Y) indexes giving the diving points between
     * sub sequences.  The first sub-sequence is contained in [X0, X1),
     * [Y0, Y1), the second in [X1, X2), [Y1, Y2) and so on.  Note
     * that (X0, Y0) == (XOFF, YOFF) and
     * (X[NCHUNKS], Y[NCHUNKS]) == (XLIM, YLIM).
     *
     * This function assumes that the first lines of the specified portions
     * of the two files do not match, and likewise that the last lines do not
     * match.  The caller must trim matching lines from the beginning and end
     * of the portions it is going to specify.
     */
    function _diag($xoff, $xlim, $yoff, $ylim, $nchunks) {
        $flip = false;

        if ($xlim - $xoff > $ylim - $yoff) {
            // Things seems faster (I'm not sure I understand why)
            // when the shortest sequence in X.
            $flip = true;
            list ($xoff, $xlim, $yoff, $ylim) = array($yoff, $ylim, $xoff, $xlim);
        }

        if ($flip)
            for ($i = $ylim - 1; $i >= $yoff; $i--)
                $ymatches[$this->xv[$i]][] = $i;
        else
            for ($i = $ylim - 1; $i >= $yoff; $i--)
                $ymatches[$this->yv[$i]][] = $i;

        $this->lcs = 0;
        $this->seq[0]= $yoff - 1;
        $this->in_seq = array();
        $ymids[0] = array();

        $numer = $xlim - $xoff + $nchunks - 1;
        $x = $xoff;
        for ($chunk = 0; $chunk < $nchunks; $chunk++) {
            if ($chunk > 0)
                for ($i = 0; $i <= $this->lcs; $i++)
                    $ymids[$i][$chunk-1] = $this->seq[$i];

            $x1 = $xoff + (int)(($numer + ($xlim-$xoff)*$chunk) / $nchunks);
            for ( ; $x < $x1; $x++) {
                $line = $flip ? $this->yv[$x] : $this->xv[$x];
                if (empty($ymatches[$line]))
                    continue;
                $matches = $ymatches[$line];
                reset($matches);
                while (list ($junk, $y) = each($matches))
                    if (empty($this->in_seq[$y])) {
                        $k = $this->_lcs_pos($y);
                        USE_ASSERTS && assert($k > 0);
                        $ymids[$k] = $ymids[$k-1];
                        break;
                    }
                while (list ($junk, $y) = each($matches)) {
                    if ($y > $this->seq[$k-1]) {
                        USE_ASSERTS && assert($y < $this->seq[$k]);
                        // Optimization: this is a common case:
                        //  next match is just replacing previous match.
                        $this->in_seq[$this->seq[$k]] = false;
                        $this->seq[$k] = $y;
                        $this->in_seq[$y] = 1;
                    }
                    else if (empty($this->in_seq[$y])) {
                        $k = $this->_lcs_pos($y);
                        USE_ASSERTS && assert($k > 0);
                        $ymids[$k] = $ymids[$k-1];
                    }
                }
            }
        }

        $seps[] = $flip ? array($yoff, $xoff) : array($xoff, $yoff);
        $ymid = $ymids[$this->lcs];
        for ($n = 0; $n < $nchunks - 1; $n++) {
            $x1 = $xoff + (int)(($numer + ($xlim - $xoff) * $n) / $nchunks);
            $y1 = $ymid[$n] + 1;
            $seps[] = $flip ? array($y1, $x1) : array($x1, $y1);
        }
        $seps[] = $flip ? array($ylim, $xlim) : array($xlim, $ylim);

        return array($this->lcs, $seps);
    }

    function _lcs_pos($ypos) {
        $end = $this->lcs;
        if ($end == 0 || $ypos > $this->seq[$end]) {
            $this->seq[++$this->lcs] = $ypos;
            $this->in_seq[$ypos] = 1;
            return $this->lcs;
        }

        $beg = 1;
        while ($beg < $end) {
            $mid = (int)(($beg + $end) / 2);
            if ($ypos > $this->seq[$mid])
                $beg = $mid + 1;
            else
                $end = $mid;
        }

        USE_ASSERTS && assert($ypos != $this->seq[$end]);

        $this->in_seq[$this->seq[$end]] = false;
        $this->seq[$end] = $ypos;
        $this->in_seq[$ypos] = 1;
        return $end;
    }

    /**
     * Find LCS of two sequences.
     *
     * The results are recorded in the vectors $this->{x,y}changed[], by
     * storing a 1 in the element for each line that is an insertion
     * or deletion (ie. is not in the LCS).
     *
     * The subsequence of file 0 is [XOFF, XLIM) and likewise for file 1.
     *
     * Note that XLIM, YLIM are exclusive bounds.
     * All line numbers are origin-0 and discarded lines are not counted.
     */
    function _compareseq($xoff, $xlim, $yoff, $ylim) {
        // Slide down the bottom initial diagonal.
        while ($xoff < $xlim && $yoff < $ylim && $this->xv[$xoff] == $this->yv[$yoff]) {
            ++$xoff;
            ++$yoff;
        }

        // Slide up the top initial diagonal.
        while ($xlim > $xoff && $ylim > $yoff && $this->xv[$xlim - 1] == $this->yv[$ylim - 1]) {
            --$xlim;
            --$ylim;
        }

        if ($xoff == $xlim || $yoff == $ylim)
            $lcs = 0;
        else {
            // This is ad hoc but seems to work well.
            //$nchunks = sqrt(min($xlim - $xoff, $ylim - $yoff) / 2.5);
            //$nchunks = max(2,min(8,(int)$nchunks));
            $nchunks = min(7, $xlim - $xoff, $ylim - $yoff) + 1;
            list ($lcs, $seps)
                = $this->_diag($xoff,$xlim,$yoff, $ylim,$nchunks);
        }

        if ($lcs == 0) {
            // X and Y sequences have no common subsequence:
            // mark all changed.
            while ($yoff < $ylim)
                $this->ychanged[$this->yind[$yoff++]] = 1;
            while ($xoff < $xlim)
                $this->xchanged[$this->xind[$xoff++]] = 1;
        }
        else {
            // Use the partitions to split this problem into subproblems.
            reset($seps);
            $pt1 = $seps[0];
            while ($pt2 = next($seps)) {
                $this->_compareseq ($pt1[0], $pt2[0], $pt1[1], $pt2[1]);
                $pt1 = $pt2;
            }
        }
    }

    /**
     * Adjust inserts/deletes of identical lines to join changes
     * as much as possible.
     *
     * We do something when a run of changed lines include a
     * line at one end and has an excluded, identical line at the other.
     * We are free to choose which identical line is included.
     * `compareseq' usually chooses the one at the beginning,
     * but usually it is cleaner to consider the following identical line
     * to be the "change".
     *
     * This is extracted verbatim from analyze.c (GNU diffutils-2.7).
     */
    function _shift_boundaries($lines, &$changed, $other_changed) {
        $i = 0;
        $j = 0;

        USE_ASSERTS && assert('count($lines) == count($changed)');
        $len = count($lines);
        $other_len = count($other_changed);

        while (1) {
            /*
             * Scan forwards to find beginning of another run of changes.
             * Also keep track of the corresponding point in the other file.
             *
             * Throughout this code, $i and $j are adjusted together so that
             * the first $i elements of $changed and the first $j elements
             * of $other_changed both contain the same number of zeros
             * (unchanged lines).
             * Furthermore, $j is always kept so that $j == $other_len or
             * $other_changed[$j] == false.
             */
            while ($j < $other_len && $other_changed[$j])
                $j++;

            while ($i < $len && ! $changed[$i]) {
                USE_ASSERTS && assert('$j < $other_len && ! $other_changed[$j]');
                $i++;
                $j++;
                while ($j < $other_len && $other_changed[$j])
                    $j++;
            }

            if ($i == $len)
                break;

            $start = $i;

            // Find the end of this run of changes.
            while (++$i < $len && $changed[$i])
                continue;

            do {
                /*
                 * Record the length of this run of changes, so that
                 * we can later determine whether the run has grown.
                 */
                $runlength = $i - $start;

                /*
                 * Move the changed region back, so long as the
                 * previous unchanged line matches the last changed one.
                 * This merges with previous changed regions.
                 */
                while ($start > 0 && $lines[$start - 1] == $lines[$i - 1]) {
                    $changed[--$start] = 1;
                    $changed[--$i] = false;
                    while ($start > 0 && $changed[$start - 1])
                        $start--;
                    USE_ASSERTS && assert('$j > 0');
                    while ($other_changed[--$j])
                        continue;
                    USE_ASSERTS && assert('$j >= 0 && !$other_changed[$j]');
                }

                /*
                 * Set      aurn $s[$start - _toý«P%PbW_DiffOp_Add extends _DiffOp To@°-Ë‰PbWsñ= 0) {
  Yhananged.
            while ($y_EC˜oï    ENes ane th// e a%Pb    beAlgoNU dwe can later determine whether the run  changes.
    = +;
             ?    :f thi     */
                $runlength = $i - $start;

               while 
                 * Move the changed    * k, so long as the
           * but ack, so lorevious unchanged line matches the last c    * but e.
                 * This merges w Do       is co      * R    t_Diffl linees the                    *art;

              omputvfs.
while     farf identical lines tlater determine whether the runchanged[$j])
               */
            whilstart > 0 && $lines[$start - 1] == */
     -$start] = 1;
                n of change   -$s 1]) {
                changed[$j])
         of changes.
            whil        nier_len && $other_________($i < $len && ! $changed[$i]) {
                USE_ASSERTS && assert('$j < $other    nd[$j]');
                     ;
                $j++;
                                 }
        hanges.
    = +ij]');
                    changed[;
                $j++;
                while ($j < $otherther    nd[$j]');
                 $ymids[$k] = $ymids[$k-1];
      changed[has grown.!
                           $eesponding point iIfdentical ,putvf      uhoo-s thed /*
           sponding point i  /* _DiffO hanges.
    Ë‰PbWsñ= 0) {
  Yhananged.
            * $other_changed[$jO hanges.
       i& !$this->xchanged[$xi- 1] == $lines[$i - 1]) {
                $changed[--$s01]) {
                              $start--;
                    USSERTS && assert('$j > 0');
                    w ($other_changed[--$j])
                    continue;
                    USE_ASSERTS && assert2[1]);
           }Op_Change($thisrep whinthe vecch($opCHUNKS+1  return $end;    sum'ngs.* @author Gostlyairiki
}
}

ew _Dif     $pt1 = $pt2COp {
   o and has a $this-s      HUNKS+1 urn $end;    sum'ngs.*  has nd has a@paramthis->xchang  LCS iAn  LCS is tsum'ngs.*  has );
   (Typly ili <dwhifl liot
     * maYhana)nd has a@paramth$this->y  LCS iAn  LCS is tsum'ngs.*  has batim from analyffOp {
    vate
 */
class _DiffEngine {

    fennceEngineoffrey T. $end]] = false;
        /fenn->s private
 */
class _DiffEng$end]] = f//   while /canivate
 */
class _DiffEng$end]]       $pt1 = $pt2 $this-> $this-dGostl.*  has nd has aSYNOPSIS:*  has nd has a    f         } el     w        wend) {
  * log->g=    f -> $this->cd) {
  * @ypos;
 dd the AGostlydd the rep whinthe v      this-
      *  has );
       e exclff;
 tl.*  has batim from anal $this->closing = $cog->g=    wh;sing = $cog->
        /his->seq[0]= $yofM_ADed[](alse;
        id
ew _ }

        $beg g->
       $x1)     -> $this->cd) {
           $edits[] = n $t$end]]       $pt1 = $pt2 /cannchang    ;
 tl.*  has ) {
  * @ypos;
 bool Tru1;
    return $end; thid/N/Nally i.*  has batim from analisE      }

        M_ADed[](alse;
        id
ew _ }

        $begpos($y   ->class!ss _Diff
                 ypos;
 his->xchanged[$skip] = $typos;
 the shorte       $pt1 = $pt2 $this->ents.
     *
     *onrn $edits;
    }


    /**
  llowing identical line
 ute thechan   lnte ic purentre free to) {
  * @ypos;
 %PbTnts.
     *
     * Re*  has batim from anallcs>closing = $co($xoff == $xlim |M_ADed[](alse;
        id
ew _ }

        $begpos($y   ->class=ss _Diff
                 o($xo+       $ly   ->eturn new _ed[$skip] = $typos;
 $s->in_seq       $pt1 = $pt2Geat one  exclff;sen/161alse;
       identical linof tp {
         his->xchang parame: dif   cd       identicacOp {
   o and has ) {
  * @ypos;
  LCS iTone  exclff;se(ie. is nosum'ngs.*  has batim from anale virtual", E_USE     w      $this->in_seq =M_ADed[](alse;
        id
ew _ }

        $begpos($y   ->eturn                 h($opt    andi*/
clasnt($lines) ==.
   ly   ->eturn new _ed[$skip] = $typos;
 $s_construct       $pt1 = $pt2Geat one) {
    sen/161alse;
       identical linof tp {
         h$this->y parame: dif   cd       identicacOp {
   o and has ) {
  * @ypos;
  LCS iTonese(ie. is nosum'ngs.*  has batim from anal ? count($this->orig     w      $this->in_seq =M_ADed[](alse;
        id
ew _ }

        $begpos($y   ->e = 'cha                 h($opt    andi*/
clasnt($lines) ==.
   ly   ->se() {
       ed[$skip] = $typos;
 $s_construct       $pt1 = $pt2 /cannaGostlychanot obfusllowing identical line
 _Diffts =echan ebugg     urentrs.*  has batim from analy /canivate
 */
class _DiffEng   function __c coit o    om_lines, $s!ss coit o         retur( if (($this->xchvar $closing;

Rf tp {
    lor exclff;
oesn's a com reverse() {
        ttion __c coit o     _DiffEng !ss coit o         r ? count(if (($this->xchvar $closing;

Rf tp {
    lo) {
    
oesn's a com reverse() {
     sing = $cog->g=    wh-> $this->cd) {
      __c coit o     _DiffEng !ss coit o    g->
 etur( if (($this->xchvar $closing;

Rfthis-dGr exclff;
oesn's a com reverse() {
        ttion __c coit o    om_lines, $s!ss coit o    g->
  ? count(if (($this->xchvar $closing;

Rfthis-dG) {
    
oesn's a com reverse() {
     sing = $cohangclass _Dnone'== $xlim |M_ADed[](alse;
        id
ew _ }

        $begpos($hangclass 1)     ->clasa                 var $closing;

Eged,ts between
 non-ome ion reverse() {
        ting = $cohangclass _     ->clasin_seq[$ypos] = 1;
   ($xoff   $this->>cd) {
     var $closing;

ostlydkay:
    =  ($x reverse()NOTICEn new _DiffO_Changesense:i  d   re.* @author GM         e($this->ostlyaiew _$pt1 = $pt2COp {
   o and has nd has a $this-s      HUNKS+1 urn $end;    sum'ngs.*  has nd has al linrom anau cd    **
 * Claslim -* Thidenticacase-    nsitvs used ,lemensed  line at->ychidenticac      bWsñlinte- glob.*  has nd has a@paramthis->xchang  LCS iAn  LCS is tsum'ngs.*  has );(Typly ili <dwhifl liot
     * maYhana)nd has nd has a@paramth$this->y  LCS iAn  LCS is tsum'ngs.*  has nd has a@paramthm     _is->xchang  LCS il lin LCS iul

  *  has ); ($lcs
       ($dit      * ofed togeth id
is->xchang.*  has );Tthis->{x,y bWsñhm     _is->xchang  ust trim mñhm     _$this->y  Lso t   * st }
}


/**
  Lsst trim mñnt);

*
 *  an
     *tl.*  has ) {
  * @paramthm     _$this->y  LCS il lin LCS iul

  *  has ); ($lcs
             * ofed togeth id
$this->y.*  has batim from analyffOp {
    vate
 */
class _DiffEn,ñhm     _is->xchang,thm     _$this->y)yairiki




   contiff($from_lines, $0;

       m     _is->xchang          //   contiff($fr$this->y)y;

       m     _$this->y)   sing = $c  Lsnt::yffOp {
    vm     _is->xchang,thm     _$this->y)  sing = $co operations.
        $$ec          $this->_     eq[0]= $yofM_A
            i$$ec  0)
    }

        $beg n __con&this->_     nges
 eturd) {
            $nstruct($oeturn& !$this->xchanged[$xn __conh($opt   andiis->xchang,thxiasnt($lineturn&1]) {
              op+       $leturn new _ed[$$$$$ >= 0 && !$othe {
        &this->_     nges
  $this->orig            $nstruct($orig, $clo !$this->xchanged[$xi
        h($opt   andi _DiffEn,ñhyiasnt($linrig, $clo1]) {
             yop+       $lse() {
       ed[$$$$$ >ed[$$$$$ >ed[$DiffO_ChangeA thor G) {
     >ostlsnternallythe oor G
     s
     *tlbWsñ oor ic  *tlb
     .* @ It    * thiscd   * of the oor GanacustomLIM) via * _Diitaend,
er to obementfaeni  * se {
s.* @author Gostl/ note: diaiew _$pt1 = $pt2N     * ofq);
      neturn"iffEn" to p whirvb.*  has nd has alytheul

   bts.
ftSet  $otfM_A
f the oor , 0;
  ub oor inserts/de Daiwanadd tse of theto o{
  Yot u>y.*  has batim }
}

q);
   _  netur_    w   0if     $pt1 = $pt2N     * ofanged[$skipneturn"iffEn" to p whirvb.*  has nd has alytheul

   bts.
ftSet  $otfM_A
f the oor , 0;
  ub oor inserts/de Daiwanadd tse of theto o{
  Yot u>y.*  has batim }
}

anged[$s_  netur_    w   0if     $pt1 = $pt2/ notemaY *tl.*  has ) {
  * @paramthdstlydd the AGostlydd the.*  has )@ypos;
 sum'ngthe di note: d* se {
.*  has batim from anal         i falsesing = $co operations);

        block$end]);

        $tipneturn     $this->in_seq = aq);
off   $this);
   _  netur_    w
        $tnangedoff   $thianged[$s_  netur_    wUSE_ASSERTS && ass_ines[_s priis->in_seq =M_ADed[](a  f ->       id
ew _ }

        $begpos($y   ->class=ss _Diff
 !$this->xchanged[$   $nstruct($oblock         while (list ($junk,      $ly   ->eturn if (aq);
o+$tnanged                     }
      block $x1)     j]');
                 $ymids[$k] = $ymiiiiied[$                   }
     pos($nanged                     }
          ipneturn     $tt   andiy   ->etur.
   lnanged j]');
                         block $x1)          if ($copy)netur       $content = p_wiki_xhtml($id, $date, false);
   && ass_block($x   lnangedo+$tx     x   ly   lnangedo+$ty     y   lblock       $content = p_wiki_xh block$end]);

        $ = p_wiki_xhtml($id, $date, fatml($id, $date, fa ipneturn  iy   ->etur      ed[$$$$$ >ed[$$$$$$$$$tem->category = $meta[' __co nstruct($oblock         while (list ($ju ipneturn     $tt   andiipneturasnt($linr)netur     aq);
assert('$j < $other    nx0  $thi   nt($linr)netur ssert('$j < $other    ny0peratio  nt($linr)netur ssert('$j < $other    nblock$enete[] = $from_lines[$ $meta[' __cnr)netur                   }
      block $x1)          if ($copy)netur       $content = ptml($id, $date, fa block $x1)     j]');
        nged[$j])
          y   ->eturn                   op+       $ly   ->eturn new _ed[$         y   ->e = 'cha                  yop+       $ly   ->se() {
       ed[$sk    ttion __cnstruct($oblock  = 0 && !$othe && ass_block($x   lx     x   ly   ly     y   lblock   = 0 && !$          $thi_his_s priis-ed[$sk    tfrom analyblock($xbeg(8,(ien  lybeg(8,yien  &
ew _Dange';

    functio_ines[_block($&& ass_block_h     ($xbeg(8,(ien  lybeg(8,yien)eq[0]= $yofM_ADed[](a       id
ew _ }

        $begpos($y   ->class=ss _Diff
                 o  while (netur$ly   ->eturn new _ed[$    ts[] = ney   ->class=ss  _Di
                 o  while _Ded$ly   ->se() {
       ed[$    ts[] = ney   ->class=ss iffOp_D
                 o  whileiffOp_d$ly   ->eturn new _ed[$    ts[] = ney   ->class=ss iffOp_C
                 o  while      Udiy   ->etur.
ly   ->se() {
       ed[$    ts[]                 var $closing;

Unkn$xofnged,clas reverse() {
        ting }e';

    functio_his_block(is-ed[$sk    tfrom analyines[_s prii}

        obyines[(is-ed[$sk    tfrom analyhis_s priinge';

    fot x1)obyget_) $flag>>cd) {
     obyhis_ one >cd) {
             ot s-ed[$sk    tfrom analyblock_h     ($xbeg(8,(ien  lybeg(8,yien)   function __c,(ien > 1or ($xi = $skip; if .= "," . ($xbego+$txien - seps[] = $fl   $miien > 1or ($xi = $skipy if .= "," . ($ybego+$tyien - seps) {
             ; if ._c,(ien ? $miien ?s i' :s i'  }
'a'  .ipy ifs-ed[$sk    tfrom analyines[_block($h     )   functionecho $h     s-ed[$sk    tfrom analyhis_block(i   func;

        return    wdi*/
clasohanfi$num' ' }

        M_ADed[](ais->y  s $s_coor ($xi = $skiecho "ohanfi$n".functio_hscapndi*/
c)."\n"s-ed[$sk    tfrom analy (netur$l  var $type = 'add';

  n    wdi*/
clis-ed[$sk    tfrom analy _Ded$l  var $type = 'add';

  n    wdi*/
cl, ">"is-ed[$sk   tfrom analyiffOp_d$l  var $type = 'add';

  n    wdi*/
cl, "<"is-ed[$sk    tfrom analy      Udiar $type = 'change';

    functioyiffOp_d$leturn new _ed[$echo "---\n"s-ed[$    functioy _Ded$lse() {
        r     $pt1 = $pt2Escapn sum'ng1 = $pt21 = $pt2Ovsin      ches thodlast in) {
  Yh note: dsl   hscap    Ëif(!$oe free to B$conc$thisref(!$os    r to con       d*WITHOUT hscap   .1 = $pt21 = $pt2@paramth  r sum'ngthturn um'ngtto hscapn*  has )@ypos;
 sum'ngthe dhscapnd sum'ng.*  has batim from analyhscapndisum)ge';

            sum new _DiffO_ChangeUted[ty oor G
   suyd[$skHTMLdi note: d*dstlsnternalDephis->nal   requ}
}

DIFF_INLINESTYLES,    tru1;ly, smin ion p wode frdrnalinng assuyd>y  Lsou cd.+]] fulG
   HTMLd    g  us     
 * sUNKS > 2, and sll text search to the feed object
 *
 * oor GHTMLostlyaiew _$pt1 = $pt2Holds
    suyd>   ret  us ba ic CSS*  has batim ine ic pub  a  suyd>y ng it to registered pch($o- _Dedng a        '  /*grNU d-color: #ddffdd;', registered pch($o-iffOp_dng a      '  /*grNU d-color: #ffdddd;', registered pch($o- (netur'ered p   '  /*grNU d-color: #f5f5f5;', registered pch($o-nces'istered p   'color: #ff    ;', register)if     $pt1 = $pt2Rpos;
  nc$this   suyde parame: d*  has batim ine ic from anal ss$lsethi  re)ge';

       requiDIFF_INLINESTYLES $yoff, $ylim(iDIFF_INLINESTYLES)ge';

     $ylim(!  }

 self:: suyd>y[lsethi  re           ''      ed[$           'suyd>="'.self:: suyd>y[lsethi  re .'"'      ed[$}ed[$                     'sethi="'.lsethi  re.'"'      ed[$}new _DiffO_Changene for phpwiki. (Taken from     
    li <  <?php
/* *tl.php,**
 * A PHP diUNKS >/
code freeNBSP', "\xC2\xA0"is ed[$// utf-8 non- }

     sglob.*uthor GeHWLDF_WordAccumulatorDairiki
 * @accesyffOp {
     $type = 'add';

  n    w $this->seq[0]= $yoff';

  n    num''q[0]= $yoff';

  ngrNUpnum''q[0]= $yoff';

  ntagnum''q[0]= sk    tfrom analyflushGrNUp($   ntag)   function __c,';

  ngrNUpn!=ss f
 !$this->xchang __c,';

  ntagnuCENTces'
                 o  while    n.= '< {
    '.HTMLostl:: ss$ch($o-nces').'>'.functio_hscapndi';

  ngrNUp).'</ {
   >'      ed[$    ts[] = ne';

  ntagnuCEN _Di
                 o  while    n.= '< pan '.HTMLostl:: ss$ch($o- _Dedng a ).'>'.functio_hscapndi';

  ngrNUp).'</ pan>'      ed[$    ts[] = ne';

  ntagnuCENiffi
                 o  while    n.= '< pan '.HTMLostl:: ss$ch($o-iffOp_dng a ).'><iff>'.functio_hscapndi';

  ngrNUp).'</iff></ pan>'      ed[$    ts[]                 o  while    n.= functio_hscapndi';

  ngrNUp)     ting }e';

    functio_grNUpnum''q[0]= $yoff';

  ntagnum$   ntagq[0]= sk    tfrom analyflushL fre$   ntag)   functionf';

  nflushGrNUp($   ntag); function __c,';

  n    n!ss f
= 0 && !$othe && ass_    whs; $i++)
  _           conf';

  n    num''q[0]= sk    tfrom anal _DWords$l$dataass agnum'')   function __c,'agn
        }ntag)= 0 && !$othe && ass_flushGrNUp($tag); 
        M_ADed[](a$data  s $$datylim,$nchunks);
      -ng assl

   ts =ecy, s   f   * k,  * of$dat.$this->xchang __c,$dat =ss f
= 0 && !$otheeeee ($other_changed[--$j] __c,$dat
    = "\n" $seps[0];
            whilegrNUpn.= NBSP1]) {
             && ass_flushL fre$tag); function         $dat =
    trc,$dat, seps[] = $fl0]= sk[] = $fl0]=    cont! tr trc,$dat, "\n"       ting = $co  whilegrNUpn.= ,$dat      ed[$}new _Di    tfrom analgetL   wd)   functionf';

  nflushL fre'~done'cd) {
             && ass_    ws-ed[$sk    tfrom analyhscapndisum)ge';

           hscdisum) new _DiffOthor GWordLevel    e($this->M         eairiki
 * @accesyffOp {
    leturDiffEn,ñhse() {
DiffEng   function $xlim eturD$dataasseturDsum'    ); $i++)
  _he fe leturDiffEncd) {
      $xlim se() {
D$dataassse() {
Dsum'    ); $i++)
  _he fe lse() {
DiffEng  sing = $c  Lsnt::yffOp {
    veturD$dataassse() {
D$dataasseturDsum'    assse() {
Dsum'    )s-ed[$sk    tfrom analyie fe liffEng   function __c!p wg_a com_all('/ ( [^\S\n]+ | [0-9_A-Za-z\x80-\xff]+ | . ) (?: (?!< \n) [^\S\n])? /xsu', registered p implode("\n"       w),thm         while (ly($ylim, $xli, $xli f
, , $xli f
       ed[$skip] = $typos;
 ruct($om      mis->_compask    tfrom anale virtual", E_USE n __con     HWLDF_WordAccumulators->in_seq =M_ADed[](alse;
        id
ew _ }

        $begpos($y   ->class=ss _Diff
                 on __-> _DWords$ly   ->eturn new _ed[$    ts[] = ney   ->eturn                  n __-> _DWords$ly   ->etur,ENTces'
      ed[$skip] = $typos;
  n __->getL   wd)_compask    tfrom anal ? count($this->orig i
             HWLDF_WordAccumulators->in_seq =M_ADed[](alse;
        id
ew _ }

        $begpos($y   ->class=ss _Diff
                 oi
     -> _DWords$ly   ->se() {
       ed[$    ts[] = ney   ->e = 'cha                  i
     -> _DWords$ly   ->se() {
,ENTces'
      ed[$skip] = $typos;
  i
     ->getL   wd)_compaskffOthor GInng aWordLevel    e($this->M         eairiki
 * @accesyffOp {
    leturDiffEn,ñhse() {
DiffEng   function $xlim eturD$dataasseturDsum'    ); $i++)
  _he fe leturDiffEncd) {
      $xlim se() {
D$dataassse() {
Dsum'    ); $i++)
  _he fe lse() {
DiffEng  sing = $c  Lsnt::yffOp {
    veturD$dataassse() {
D$dataasseturDsum'    assse() {
Dsum'    )s-ed[$sk    tfrom analyie fe liffEng   function __c!p wg_a com_all('/ ( [^\S\n]+ | [0-9_A-Za-z\x80-\xff]+ | . ) (?: (?!< \n) [^\S\n])? /xsu', registered p implode("\n"       w),thm         while (ly($ylim, $xli, $xli f
, , $xli f
       ed[$skip] = $typos;
 ruct($om      mis->_compask    tfrom analinng artual", E_USE n __con     HWLDF_WordAccumulators-", E_USEM_ADed[](alse;
        id
ew _ }

        $begpos($y   ->class=ss _Diff
                 on __-> _DWords$ly   ->se() {
       ed[$    ts[] = ney   ->class=ss iffOp_C
seps[0];
          n __-> _DWords$ly   ->etur,ENiffi
; function         n __-> _DWords$ly   ->se() {
,EN _Di
ps[] = $fl0]= s ts[] = ney   ->class=ss iffOp_D
                 on __-> _DWords$ly   ->etur,ENiffi
; function    ts[] = ney   ->class=ss  _Di
                 on __-> _DWords$ly   ->se() {
,EN _Di
ps[] = $fl0]= ts[] = ney   ->eturn                  n __-> _DWords$ly   ->etur,ENiffi
; functionskip] = $typos;
  n __->getL   wd)_compaskffO_Change"Ununcti"  *tlb
     td andernallythe oor G
     s
     *tlbWsñ oor ic "ununcti  *tl"b
     .* @rnalNOTE:* se {
    plmentsturn us unsafubsequusnd whHTMLdast therhscap   .1 
 * oor GUnunctiostl/ note: di($this->ostl/ note: diairiki
 * @accesyffOp {
    l  netur_    w   4)   functionf';

  q);
   _  netur_    w   $  netur_    w
        $t  $thianged[$s_  netur_    w   $  netur_    w
     sk    tfrom analyblock_h     ($xbeg(8,(ien  lybeg(8,yien)   function __c,(ien 
  1or ($xi = $skip; if .= "," . ,(ienps[] = $fl   $miien 
  1or ($xi = $skipy if .= "," . miiend) {
            "@@ -$xbego+py if @@\n"s-ed[$sk    tfrom analy _Ded$l  var $type = 'add';

  n    wdi*/
cl, "+"is-ed[$sk   tfrom analyiffOp_d$l  var $type = 'add';

  n    wdi*/
cl, "-"is-ed[$sk   tfrom analy      Udiar $typfclffange';

    functioyiffOp_d$leturn new _ed[$functioy _Ded$lfclffa_compaskffO_Change Wiki   ia T:Diffsuyde  *tlb
     td anderna * oor GT:Difostl/ note: di($this->ostl/ note: diaiompa}
}

col pan = 2hange extends _DiffOp {
    )   functionf';

  q);
   _  netur_    w   2
        $t  $thianged[$s_  netur_    w   2s-ed[$sk    tfrom anal         i false       $// P whirvbñlintesglobpwiki  nv a 1   sy, sto non- }

     sglob      * Thi// Doine numnv a  have*
    m _Dif    f$dat-wraphanged);

 ot x1)  Lsnt::         i fa;anged);

 ot x1) {
_
     e('  ','&#160; ',
 ot a;anged);

 ot x1)p wg_
     e('/ (?=<)|(?<=[ >]) /',
'&#160;',
 ot a;anged);

        ot s-ed[$sk    tfrom analyp w(altur   functionf'turn  *   g andalk,  s(altur d) {
             &tur
     sk    tfrom analyblock_h     ($xbeg(8,(ien  lybeg(8,yien)   function   requilas->orig     $l $pt2las-['ng a ].' '.$xbeg>orig     $l2$pt2las-['ng a ].' '.$ybeg>orig     $y();'<tr><td '.HTMLostl:: ss$ch($o-blockh      ).' col pan="'.l     r ol pan.'">'.fl1.":</td>\n"anged.
        '<td '.HTMLostl:: ss$ch($o-blockh      ).' col pan="'.l     r ol pan.'">'.fl2.":</td>\n"anged.
        "</tr>\n"s-ed[$    ts[] = n s-ed[$sk    tfrom analyines[_block($h     )   functionpri  $lh     )s-ed[$sk    tfrom analyhis_block(i   func;

        return    wdi*/
clasohanfi$=' ',
 color="linte"i   func;

        retur _DedL fre$*/
c,$hscapnd=d]);
g   function __c!$hscapnd
seps[0];
     p; $yi < $nctio_hscapndi*/
c); functionskip] = $typos;
 '<td '.HTMLostl:: ss$ch($o-*/
ch      ).'>+</td>'lines tlater dete'<td '.HTMLostl:: ss$ch($o- _Dedng a ).'>' .  p; $y.'</td>'s-ed[$sk    tfrom analiffOp_dL fre$*/
c,$hscapnd=d]);
g   function __c!$hscapnd
seps[0];
     p; $yi < $nctio_hscapndi*/
c); functionskip] = $typos;
 '<td '.HTMLostl:: ss$ch($o-*/
ch      ).'>-</td>'lines tlater dete'<td '.HTMLostl:: ss$ch($o-iffOp_dng a ).'>' .  p; $y.'</td>'s-ed[$sk    tfrom analg    Lg artual", E_USEypos;
 '<td col pan="'.l     r ol pan.'">&#160;</td>'s-ed[$sk    tfrom anal  neturL fre$*/
ctual", E_USEypos;
 '<td '.HTMLostl:: ss$ch($o-*/
ch      ).'>&#160;</td>'lines tlater dete'<td '.HTMLostl:: ss$ch($o- (netur').'>'.functio_hscapndi*/
c).'</td>'s-ed[$sk    tfrom analy _Ded$l  var $type = 'add';

  n _DedL frwdi*/
clad]);
gs-ed[$sk    tfrom analy _DedL frwdi*/
cla$hscapnd=d]);
gtype = 'adM_ADed[](ais->y  s $s_coo}

        $begpri  $'<tr>' . alse;
      Lg artu. alse;
  _DedL fre$*/
c,$hscapndtu. "</tr>\n"); functionskip] sk    tfrom analyiffOp_d$l  var $type = 'adM_ADed[](ais->y  s $s_coo}

        $begpri  $'<tr>' . alse;
 iffOp_dL fre$*/
c) . alse;
      Lg artu. "</tr>\n"); functionskip] sk    tfrom analy (netur$l  var $type = 'adM_ADed[](ais->y  s $s_coo}

        $begpri  $'<tr>' . alse;
   neturL fre$*/
ctu.  alse;
   neturL fre$*/
ctu. "</tr>\n"); functionskip] sk    tfrom analy      Udiar $type = 'change';

    f  f        WordLevel    diar $type = 'cha;hi//   chehscapns
     *tlbdatae';

    f elg=    f ->e virt>orig     $  $del   f -> ? count(nes);
        $othp; $yi <   $tt e.c e)
           while (l$a; $yi <   $tt e.c e)        $edits[] =pri  $'<tr>' . alse;
 iffOp_dL fre$*/
c,tru1tu. alse;
  _DedL fre$a*/
c,tru1tu. "</tr>\n"); functionskip] e (l$';

  n _DedL frwdi _D,tru1t; #iIfdanys.
ftothis-ed[$sk    tfrom analyhscapndisum)ual", E_USEypos;
 hscdisum) new _DiffO_Change Inng assuyd>  *tlb
     td anderna * oor GInng aostl/ note: di($this->ostl/ note: diaiompa}
}

col pan = 2hange extends _DiffOp {
    )   functionf';

  q);
   _  netur_    w   2
        $t  $thianged[$s_  netur_    w   2s-ed[$sk    tfrom anal         i false       $// P whirvbñlintesglobpwiki  nv a 1   sy, sto non- }

     sglob      * Thi// Doine numnv a  have*
    m _Dif    f$dat-wraphanged);

 ot x1)  Lsnt::         i fa;anged);

 ot x1) {
_
     e('  ','&#160; ',
 ot a;anged);

 ot x1)p wg_
     e('/ (?=<)|(?<=[ >]) /',
'&#160;',
 ot a;anged);

        ot s-ed[$sk    tfrom analyp w(altur   functionf'turn  *   g andalk,  s(altur d) {
             &tur
     sk    tfrom analyblock_h     ($xbeg(8,(ien  lybeg(8,yien)   function   requilas->orig      __c,(ien 
  1or ($xi = $skip; if .= "," . ,(ienps[] = $fl   $miien 
  1or ($xi = $skipy if .= "," . miiend) {
     $y();'<tr><td col pan="'.l     r ol pan.'" '.HTMLostl:: ss$ch($o-blockh      ).'>@@ '.$las-['ng a ]." -$xbego+py if @@"d) {
     $y(.= ' < pan '.HTMLostl:: ss$ch($o-iffOp_dng a ).'><iff>'.flas-['iffOp_d ].'</iff></ pan>'      ed[$$y(.= ' < pan '.HTMLostl:: ss$ch($o- _Dedng a ).'>'.flas-['c}

p_d ].'</ pan>'      ed[$$y(.= "</td></tr>\n"s-ed[$    ts[] = n s-ed[$sk    tfrom analyines[_block($h     )   functionpri  $lh     ."\n")s-ed[$sk    tfrom analyhis_block(i   func;

        return    wdi*/
clasohanfi$=' ',
 color="linte"i   func;

        retury _Ded$l  var $type = 'adM_ADed[](ais->y  s $s_coo}

        $begpri  $'<tr><td '.HTMLostl:: ss$ch($o-*/
ch      ).'>&#160;</td><td '.HTMLostl:: ss$ch($o- _Dedng a ).'>'.< $nctio_hscapndi*/
c)u. "</td></tr>\n"); functionskip] sk    tfrom analyiffOp_d$l  var $type = 'adM_ADed[](ais->y  s $s_coo}

        $begpri  $'<tr><td '.HTMLostl:: ss$ch($o-*/
ch      ).'>&#160;</td><td '.HTMLostl:: ss$ch($o-iffOp_dng a ).'><iff>' .< $nctio_hscapndi*/
c)u. "</iff></td></tr>\n"); functionskip] sk    tfrom analy (netur$l  var $type = 'adM_ADed[](ais->y  s $s_coo}

        $begpri  $'<tr><td '.HTMLostl:: ss$ch($o-*/
ch      ).'>&#160;</td><td '.HTMLostl:: ss$ch($o- (netur').'>'.< $nctio_hscapndi*/
c)u."</td></tr>\n"); functionskip] sk    tfrom analy      Udiar $type = 'change';

    f  f        Inng aWordLevel    diar $type = 'cha;hi//   chehscapns
     *tlbdatae';

    f  $del   f ->inng arts->in_seq =M_ADed[](a  $d s $s_coor ($xi = $skipri  $'<tr><td '.HTMLostl:: ss$ch($o-*/
ch      ).'>&#160;</td><td>'.fl $y."</td></tr>\n"); funcsk    tfrom analyhscapndisum)ual", E_USEypos;
 hscdisum) new _DiffO
//Sposp VIM:i($:i(t ts=4 :
                  he feed ob-doku* A P3d71006/in