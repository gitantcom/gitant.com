a:43:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:20:"git log 日常用法";i:1;i:4;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:1;}i:3;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:27;}i:4;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:27;}i:5;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:27;}i:6;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:38:" 只是显示sha版本号和commit log";}i:2;i:31;}i:7;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:69;}i:8;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:69;}i:9;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:69;}i:10;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:166:"
root@blog-test002 gitant.com]#  git log --oneline --graph
* 21b5cb7  backup
* 4e26248  backup
* bb993a7  backup
* 7162f48  new data
* 9aec2d2  today
* 20bbe70  back
";i:1;N;i:2;N;}i:2;i:75;}i:11;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:251;}i:12;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:251;}i:13;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:251;}i:14;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:28:" 只显示近两次的更新";}i:2;i:255;}i:15;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:283;}i:16;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:283;}i:17;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:283;}i:18;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:283;}i:19;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:107:"我们常用 -p 选项展开显示每次提交的内容差异，用 -2 则仅显示最近的两次更新：";}i:2;i:284;}i:20;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:397;}i:21;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:17:"
$ git log -p -2
";i:1;N;i:2;N;}i:2;i:397;}i:22;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:422;}i:23;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:422;}i:24;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:422;}i:25;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:23:" git 一行查看日志";}i:2;i:426;}i:26;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:449;}i:27;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:449;}i:28;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:449;}i:29;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:28:"
$ git log --pretty=oneline
";i:1;N;i:2;N;}i:2;i:455;}i:30;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:494;}i:31;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:20:"git log 命令缩写";i:1;i:4;i:2;i:494;}i:2;i:494;}i:32;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:494;}i:33;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:494;}i:34;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:60:"非常好的例子，可以作为别名存入配置文件。";}i:2;i:521;}i:35;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:587;}i:36;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:114:"
git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' 
";i:1;N;i:2;N;}i:2;i:587;}i:37;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:587;}i:38;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:13:"结果如下:";}i:2;i:710;}i:39;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:729;}i:40;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:633:"
[root@blog-test002 gitant.com]# git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' 
* 21b5cb7 - (HEAD, origin/master, origin/HEAD, github/master, master)  backup (33 minutes ago) <Your Name>
* 4e26248 -  backup (4 hours ago) <Your Name>
* bb993a7 -  backup (2 days ago) <Your Name>
* 7162f48 -  new data (3 days ago) <Your Name>
* 9aec2d2 -  today (2 weeks ago) <Your Name>
* 20bbe70 -  back (2 weeks ago) <Your Name>
* 87591e4 -  back (2 weeks ago) <Your Name>
* f9062b3 -  git category (3 weeks ago) <Your Name>
* b196945 -  modify permission (4 weeks ago) <Your Name>
";i:1;N;i:2;N;}i:2;i:729;}i:41;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1371;}i:42;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1371;}}