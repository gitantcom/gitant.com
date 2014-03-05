a:36:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:10:"Git remote";i:1;i:3;i:2;i:2;}i:2;i:2;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:2;}i:3;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:27;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:63:"添加一个远端仓库到一个已经存在的git仓库上？";i:1;i:3;i:2;i:27;}i:2;i:27;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:27;}i:6;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:74:"
$ git remote add --track master origin  https://github.com/user/repo.git
";i:1;s:4:"bash";i:2;N;}i:2;i:105;}i:7;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:194;}i:8;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:51:"设置跟踪远端分支和取消跟踪远端分支";i:1;i:3;i:2;i:194;}i:2;i:194;}i:9;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:194;}i:10;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:117:"
$ git remote set-url remote URL
#设置跟踪远端分支
$ git remote set-url remote URL
#取消跟踪远端分支
";i:1;N;i:2;N;}i:2;i:260;}i:11;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:386;}i:12;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:33:"本地分支备份到远端仓库";i:1;i:3;i:2;i:386;}i:2;i:386;}i:13;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:386;}i:14;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:428;}i:15;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:428;}i:16;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:428;}i:17;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:44:" 本地添加远端仓库名称 “github”";}i:2;i:432;}i:18;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:476;}i:19;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:476;}i:20;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:476;}i:21;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:58:"
$ git remote  add  https://github.com/uahoo/git_test.git
";i:1;s:4:"bash";i:2;N;}i:2;i:482;}i:22;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:554;}i:23;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:554;}i:24;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:554;}i:25;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:44:" 将本地分支branch_4 备份到 github上";}i:2;i:558;}i:26;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:602;}i:27;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:602;}i:28;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:602;}i:29;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:310:"
$ git push -u github branch_4
Username for 'https://github.com': 
Password for 'https://uahoo@outlook.com@github.com': 
Total 0 (delta 0), reused 0 (delta 0)
To https://github.com/uahoo/git_test.git
 * [new branch]      branch_4 -> branch_4
Branch branch_4 set up to track remote branch branch_4 from github.
";i:1;N;i:2;N;}i:2;i:609;}i:30;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:929;}i:31;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:54:"查看本地分支和远程分支之间的跟踪关系";i:1;i:3;i:2;i:929;}i:2;i:929;}i:32;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:929;}i:33;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:32:"
$ git remote show remote_repo
 ";i:1;N;i:2;N;}i:2;i:997;}i:34;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1038;}i:35;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1038;}}