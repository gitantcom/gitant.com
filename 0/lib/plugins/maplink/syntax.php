<?php
if(!defined('DOKU_INC')) define('DOKU_INC',realpath(dirname(__FILE__).'/../../').'/');
if(!defined('DOKU_PLUGIN')) define('DOKU_PLUGIN',DOKU_INC.'lib/plugins/');
require_once(DOKU_PLUGIN.'syntax.php');  
    
class syntax_plugin_maplink extends DokuWiki_Syntax_Plugin {
    function getType() {return 'substition';}
    function getPType() {return 'block';}
    function getSort() {return 167;}
    function getInfo() {return array('author' => 'chlw; based on work by Eli Fenton (Anchor Plugin) and J. Drost-Tenfelde (iCalendar Plugin)', 'name' => 'maplink', 'url' => 'http://dokuwiki.org/plugin:maplink');}
    function connectTo($mode){
        $this->Lexer->addSpecialPattern('\{\{maplink:[^}]*\}\}', $mode, 'plugin_maplink');
    }

    function handle($match, $state, $pos, &$handler) {
        return explode(':', substr($match, strlen('{{maplink:'), -2));
    }
 
    function render($mode, &$renderer, $data) {
      //  $renderer->doc .= '<a href="' .htmlspecialchars($data[0]) . '">' .htmlspecialchars($data[1]) . '</a>';
        
        $renderer->doc .= '<a href="http://maps.google.com/maps?q='.str_replace(' ', '+', str_replace(',', ' ', $data[0])). '"target="_blank">' .htmlspecialchars($data[1]) . '</a>';
    }
}



