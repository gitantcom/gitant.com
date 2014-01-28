a:18:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1727:"Pull with Rebase
Along with the facility of merge commits comes the need to make
them wisely. The notion of what a merge should indicate with
respect to content is subjective and varies as a matter of version
control discipline and style, but generally you want a merge to
point out a substantive combination of two lines of development.
Certainly, too many merges creates a commit graph that is difficult
to read, thus reducing the usefulness of the structural merge
feature itself. In this context, certain workflows can easily create
what one might call “spurious merges,” which do not actually
correspond to such merging of content. Having lots of these clutters
up the commit graph, and makes it difficult to discern the
real history of a project.
As an example: suppose you and a colleague are coordinating
your individual repositories via push/pull with a shared central
one. You commit a change to your repository, while he commits
an unrelated change on the same branch. The changes might be
to different files, or even to the same file but such that they do
not require manual conflict resolution. If he pushes first, then as
described earlier, your subsequent push will fail, so you will pull;
then Git will do a successful automatic merge (since the changes
were independent), and this becomes part of the repository history
with your final push. But if you think of a merge as a deliberate
step to signal the combination of conflicting or substantially
different content, then you don’t really want this merge. The telltale
sign of this sort of spurious merge is that it’s purely an artifact
of timing; if the order of events had instead been:
1. You commit and push.
2. He pulls.
3. He commits and pushes.";}i:2;i:1;}i:3;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1728;}i:4;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1728;}i:5;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:121:"then there would have been no conflict, and no merge. This observation
is the key to avoiding such merges using git pull
";}i:2;i:1730;}i:6;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:1851;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:868:"rebase, which reorders your changes. “Rebasing” is a more
general idea, which we treat in “Rebasing” on page 149; the pullwith-
rebase option is a special case. Briefly, what happens is this:
suppose your master branch diverged from its upstream several
commits back. For each divergent commit on your branch, Git
constructs a patch representing the changes introduced by that
commit; then it applies these in order starting at the tip of the
upstream tracking branch origin/master. After applying each
patch, Git makes a new commit preserving the author information
and message from the original commit. Finally, it resets your
master branch to point to the last of these commits. The effect is
to “replay” your work on top of the upstream branch as new
commits, rather than affecting a merge with your existing
.commits.
In the earlier example, git pull ";}i:2;i:1853;}i:8;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:2721;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:695:"rebase would produce the
following simple, linear history instead of the “merge bubble”
previously pictured, with its extra commit:
* 1e6f2cb2 the final word
* baa699bc not quite
* 3a9ee5f3 in principio
A push now will succeed without further work (and without
merging), because you’ve simply added to the upstream branch;
it will be a fast-forward update of that branch. Note that the
commit ID for “the final word” has changed; that’s because it’s a
new commit made by replaying the changes of the original on
top of commit baa699bc.
If git pull starts a merge when you know there’s no need for it,
you can always cancel it by giving an empty commit message, or
with git merge ";}i:2;i:2723;}i:10;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:3418;}i:11;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:224:"abort if the merge failed leaving you in
conflict-resolution mode. If you complete such a merge and want
to undo it, use git reset HEAD^ to move your branch back again,
discarding the merge commit. You can then use git pull
";}i:2;i:3420;}i:12;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:3644;}i:13;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:67:"rebase instead. You can set a specific branch to automatically
use ";}i:2;i:3646;}i:14;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:3713;}i:15;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:20:"rebase when pulling:";}i:2;i:3715;}i:16;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3715;}i:17;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:3715;}}