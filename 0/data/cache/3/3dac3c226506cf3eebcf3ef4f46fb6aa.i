a:5:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:963:"Losing Your Head
If you directly check out a specific commit rather than a branch,
say with a command like git checkout 520919b0, then Git gives
the odd and rather dire-sounding warning that you are now in
“detached HEAD state.” Fear not, Ichabod; all will be well. “Detached
HEAD” simply means that the HEAD ref now points directly
at a commit rather than referring to a particular branch by
name. Git operates normally in this mode: you can make commits,
and the HEAD ref moves forward as usual. The important
thing to remember is that there is no branch tracking this work,
so if you switch back to a branch with git checkout branch, you
will simply discard any commits you’ve made while in detached
HEAD mode: the HEAD ref then points to the branch you’re on,
and no ref remains marking the commit you left. Git warns you
about this too, along with the commit ID you just left so that you
can go back to it if you want. You can give your anonymous";}i:2;i:1;}i:3;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1;}}