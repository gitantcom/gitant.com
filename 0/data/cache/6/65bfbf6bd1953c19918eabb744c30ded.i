a:63:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:15:"交互式rebase";i:1;i:2;i:2;i:2;}i:2;i:2;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:2;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:384:"你亦可以选择进行交互式的rebase。这种方法通常用于在向别处推送提交之前对它们进行重写。交互式rebase提供了一个简单易用的途径让你在和别人分享提交之前对你的提交进行分割、合并或者重排序。在把从其他开发者处拉取的提交应用到本地时，你也可以使用交互式rebase对它们进行清理。";}i:2;i:29;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:413;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:413;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:113:"如果你想在rebase的过程中对一部分提交进行修改，你可以在'git rebase'命令中加入'-i'或'";}i:2;i:415;}i:8;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:528;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:42:"interactive'参数去调用交互模式。";}i:2;i:530;}i:10;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:578;}i:11;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:31:"
$ git rebase -i origin/master
";i:1;N;i:2;N;}i:2;i:578;}i:12;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:578;}i:13;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:147:"这个命令会执行交互式rebase操作，操作对象是那些自最后一次从origin仓库拉取或者向origin推送之后的所有提交。";}i:2;i:618;}i:14;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:765;}i:15;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:765;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:72:"若想查看一下将被rebase的提交，可以用如下的log命令：";}i:2;i:767;}i:17;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:845;}i:18;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:27:"
$ git log github/master..
";i:1;N;i:2;N;}i:2;i:845;}i:19;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:845;}i:20;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:104:"一旦运行了'rebase -i'命令，你所预设的编辑器会被调用，其中含有如下的内容：";}i:2;i:881;}i:21;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:991;}i:22;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:503:"
pick fc62e55 added file_size
pick 9824bf4 fixed little thing
pick 21d80a5 added number to log
pick 76b9da6 added the apply command
pick c264051 Revert "added file_size" - not implemented correctly

# Rebase f408319..b04dc3d onto f408319
#
# Commands:
#  p, pick = use commit
#  e, edit = use commit, but stop for amending
#  s, squash = use commit, but meld into previous commit
#
# If you remove a line here THAT COMMIT WILL BE LOST.
# However, if you remove everything, the rebase will be aborted.
#
";i:1;N;i:2;N;}i:2;i:991;}i:23;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:991;}i:24;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:118:"这些信息表示从你上一次推送操作起有5个提交。每个提交都用一行来表示，行格式如下：";}i:2;i:1503;}i:25;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1627;}i:26;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:47:"
(action) (partial-sha) (short commit message)
";i:1;N;i:2;N;}i:2;i:1627;}i:27;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1627;}i:28;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:389:"现在你可以将操作（action）改为'edit'（使用提交，但是暂停以便进行修正）或者'squash'（使用提交，但是把它与前一提交合并），默认是'pick'（使用提交）。你可以对这些行上下移动从而对提交进行重排序。当你退出编辑器时，git会按照你指定的顺序去应用提交，并且做出相应的操作（action）。";}i:2;i:1683;}i:29;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2072;}i:30;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2072;}i:31;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:119:"如果指定进行'pick'操作，git会应用这个补丁，以同样的提交信息（commit message）保存提交。";}i:2;i:2074;}i:32;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2193;}i:33;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2193;}i:34;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:260:"如果指定进行'squash'操作，git会把这个提交和前一个提交合并成为一个新的提交。这会再次调用编辑器，你在里面合并这两个提交的提交信息。所以，如果你（在上一步）以如下的内容离开编辑器：";}i:2;i:2195;}i:35;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2461;}i:36;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:208:"
pick   fc62e55 added file_size
squash 9824bf4 fixed little thing
squash 21d80a5 added number to log
squash 76b9da6 added the apply command
squash c264051 Revert "added file_size" - not implemented correctly
";i:1;N;i:2;N;}i:2;i:2461;}i:37;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2461;}i:38;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:69:"你必须基于以下的提交信息创建一个新的提交信息：";}i:2;i:2678;}i:39;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2753;}i:40;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:411:"
# This is a combination of 5 commits.
# The first commit's message is:
added file_size

# This is the 2nd commit message:

fixed little thing

# This is the 3rd commit message:

added number to log

# This is the 4th commit message:

added the apply command

# This is the 5th commit message:

Revert "added file_size" - not implemented correctly

This reverts commit fc62e5543b195f18391886b9f663d5a7eca38e84.
";i:1;N;i:2;N;}i:2;i:2753;}i:41;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2753;}i:42;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:117:"一旦你完成对提交信息的编辑并且退出编辑器，这个新的提交及提交信息会被保存起来。";}i:2;i:3173;}i:43;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3290;}i:44;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3290;}i:45;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:198:"如果指定进行'edit'操作，git会完成同样的工作，但是在对下一提交进行操作之前，它会返回到命令行让你对提交进行修正，或者对提交内容进行修改。";}i:2;i:3292;}i:46;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3490;}i:47;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3490;}i:48;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:81:"例如你想要分割一个提交，你需要对那个提交指定'edit'操作：";}i:2;i:3492;}i:49;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3579;}i:50;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:208:"
pick   fc62e55 added file_size
pick   9824bf4 fixed little thing
edit   21d80a5 added number to log
pick   76b9da6 added the apply command
pick   c264051 Revert "added file_size" - not implemented correctly
";i:1;N;i:2;N;}i:2;i:3579;}i:51;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3579;}i:52;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:275:"你会进入到命令行，撤消（revert）该提交，然后创建两个（或者更多个）新提交。假设提交21d80a5修改了两个文件，file1和file2，你想把这两个修改放到不同的提交里。你可以在进入命令行之后进行如下的操作：";}i:2;i:3796;}i:53;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4077;}i:54;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:160:"
$ git reset HEAD^
$ git add file1
$ git commit 'first part of split commit'
$ git add file2
$ git commit 'second part of split commit'
$ git rebase --continue
";i:1;N;i:2;N;}i:2;i:4077;}i:55;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4077;}i:56;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:44:"现在你有6个提交了，而不是5个。";}i:2;i:4246;}i:57;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4290;}i:58;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4290;}i:59;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:173:"交互式rebase的最后一个作用是丢弃提交。如果把一行删除而不是指定'pick'、'squash'和'edit'中的任何一个，git会从历史中移除该提交。";}i:2;i:4292;}i:60;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4465;}i:61;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:4467;}i:62;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:4467;}}