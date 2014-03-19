a:24:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:13:"detached HEAD";i:1;i:3;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:1;}i:3;a:3:{i:0;s:2:"hr";i:1;a:0:{}i:2;i:22;}i:4;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:22;}i:5;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:138:"修改过去某次提交的文件，你应该用开分支的方式。如果你直接检出的话，就会出现当前已分离的警告。";}i:2;i:29;}i:6;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:173;}i:7;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:474:" 
git checkout 3d3d8ee0e7cd5f81
Note: checking out '3d3d8ee0e7cd5f81'.

You are in 'detached HEAD' state. You can look around, make experimental
changes and commit them, and you can discard any commits you make in this
state without impacting any branches by performing another checkout.

If you want to create a new branch to retain commits you create, you may
do so (now or later) by using -b with the checkout command again. Example:

  git checkout -b new_branch_name
  ";i:1;N;i:2;N;}i:2;i:173;}i:8;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:173;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:149:"这种请款下HEAD 现在指向了某次提交而不是某个分支的名称。如果你切换分支，这种状态下所有的提交都将消失。";}i:2;i:659;}i:10;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:808;}i:11;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:812;}i:12;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:13:"diverged HEAD";i:1;i:3;i:2;i:812;}i:2;i:812;}i:13;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:812;}i:14;a:3:{i:0;s:2:"hr";i:1;a:0:{}i:2;i:833;}i:15;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:833;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:147:"发生这种情况，是你修改的分支，在提交回远程之前，这个分支被别人修改并提交了，你需要执行合并的动作。";}i:2;i:840;}i:17;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:987;}i:18;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:987;}i:19;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:100:"如你在提交回远程主干前，先fetch回远程主干，然后比较，发现分支diverged：";}i:2;i:989;}i:20;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1095;}i:21;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:699:"
$git log HEAD..origin/master

  "Your branch and 'origin/master' have diverged,
    # and have 1 and 1 different commit(s) each, respectively." 
     , check if you need to update origin. 
    If origin is up-to-date, 
    then some commits have been pushed to origin from another repo 
    while you made your own commits locally.

... o ---- o ---- A ---- B  origin/master (upstream work)
                   \
                    C  master (your work)

You based commit C on commit A because that was the latest work 
you had fetched from upstream at the time.

However, before you tried to push back to origin someone else pushed commit B.
Development history has diverged into separate paths. 
";i:1;N;i:2;N;}i:2;i:1095;}i:22;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1802;}i:23;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1802;}}