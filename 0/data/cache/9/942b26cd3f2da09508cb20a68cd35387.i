a:40:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:27:"Git克隆所有远程分支";i:1;i:3;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:81:"克隆一个git仓库后，本地发现只有master分支，其余的分支呢？";}i:2;i:39;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:120;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:120;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:22:"先克隆远程仓库:";}i:2;i:123;}i:8;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:151;}i:9;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:57:"

$ git clone git://example.com/myproject
$ cd myproject
";i:1;N;i:2;N;}i:2;i:151;}i:10;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:151;}i:11;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:19:"查看本地分支:";}i:2;i:218;}i:12;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:243;}i:13;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:23:"
$ git branch
* master
";i:1;N;i:2;N;}i:2;i:243;}i:14;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:243;}i:15;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:107:"只有一个缺省的master分支，远程分支都隐藏起来了。可以用 -a 参数参看远程分支:";}i:2;i:276;}i:16;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:389;}i:17;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:132:"

$ git branch -a
* master
  remotes/origin/HEAD
  remotes/origin/master
  remotes/origin/v1.0-stable
  remotes/origin/experimental
";i:1;N;i:2;N;}i:2;i:389;}i:18;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:389;}i:19;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:72:"如果只是想浏览下远端分支的内容，直接检出就可以：";}i:2;i:531;}i:20;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:609;}i:21;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:36:"
$ git checkout origin/experimental
";i:1;N;i:2;N;}i:2;i:609;}i:22;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:609;}i:23;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:75:"但是，想修改分支上的内容，就需要创建本地跟踪分支：";}i:2;i:655;}i:24;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:736;}i:25;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:52:"
$ git checkout -b experimental origin/experimental
";i:1;N;i:2;N;}i:2;i:736;}i:26;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:736;}i:27;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:126:"Now, if you look at your local branches, this is what you'll see:
现在再查看本地分支，就能看到两个分支了：";}i:2;i:797;}i:28;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:929;}i:29;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:38:"
$ git branch
* experimental
  master
";i:1;N;i:2;N;}i:2;i:929;}i:30;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:929;}i:31;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:54:"其他远程仓库的分支也需要先添加跟踪：";}i:2;i:978;}i:32;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1038;}i:33;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:254:"
$ git remote add win32 git://example.com/users/joe/myproject-win32-port
$ git branch -a
* master
  remotes/origin/HEAD
  remotes/origin/master
  remotes/origin/v1.0-stable
  remotes/origin/experimental
  remotes/win32/master
  remotes/win32/new-widgets
";i:1;N;i:2;N;}i:2;i:1038;}i:34;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1038;}i:35;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:37:"可以用gitk图示分支的关系：";}i:2;i:1301;}i:36;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1344;}i:37;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:16:"
$ gitk --all &
";i:1;N;i:2;N;}i:2;i:1344;}i:38;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1369;}i:39;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1369;}}