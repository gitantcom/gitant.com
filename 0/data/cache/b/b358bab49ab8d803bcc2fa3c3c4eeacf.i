a:96:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:2:"hr";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:20:"git log 日常用法";i:1;i:3;i:2;i:6;}i:2;i:6;}i:3;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:6;}i:4;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:34;}i:5;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:34;}i:6;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:34;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:38:" 只是显示sha版本号和commit log";}i:2;i:38;}i:8;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:76;}i:9;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:76;}i:10;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:76;}i:11;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:166:"
root@blog-test002 gitant.com]#  git log --oneline --graph
* 21b5cb7  backup
* 4e26248  backup
* bb993a7  backup
* 7162f48  new data
* 9aec2d2  today
* 20bbe70  back
";i:1;N;i:2;N;}i:2;i:82;}i:12;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:258;}i:13;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:258;}i:14;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:258;}i:15;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:28:" 只显示近两次的更新";}i:2;i:262;}i:16;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:290;}i:17;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:290;}i:18;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:290;}i:19;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:290;}i:20;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:107:"我们常用 -p 选项展开显示每次提交的内容差异，用 -2 则仅显示最近的两次更新：";}i:2;i:291;}i:21;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:404;}i:22;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:17:"
$ git log -p -2
";i:1;N;i:2;N;}i:2;i:404;}i:23;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:429;}i:24;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:429;}i:25;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:429;}i:26;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:23:" git 一行查看日志";}i:2;i:433;}i:27;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:456;}i:28;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:456;}i:29;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:456;}i:30;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:28:"
$ git log --pretty=oneline
";i:1;N;i:2;N;}i:2;i:462;}i:31;a:3:{i:0;s:2:"hr";i:1;a:0:{}i:2;i:498;}i:32;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:504;}i:33;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:20:"git log 常用参数";i:1;i:3;i:2;i:504;}i:2;i:504;}i:34;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:504;}i:35;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:674:"
$ git log v2.5..        # commits since (not reachable from) v2.5
$ git log test..master  # commits reachable from master but not test
$ git log master..test  # commits reachable from test but not master
$ git log master...test # commits reachable from either test or
                        #    master, but not both
$ git log --since="2 weeks ago" # commits from the last 2 weeks
$ git log Makefile      # commits that modify Makefile
$ git log fs/           # commits that modify any file under fs/
$ git log -S'foo()'     # commits that add or remove any file data
                        # matching the string 'foo()'
$ git log --no-merges   # dont show merge commits
";i:1;N;i:2;N;}i:2;i:538;}i:36;a:3:{i:0;s:2:"hr";i:1;a:0:{}i:2;i:1221;}i:37;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1228;}i:38;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:29:"git log 很好的参数组合";i:1;i:3;i:2;i:1228;}i:2;i:1228;}i:39;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:1228;}i:40;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1228;}i:41;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:60:"非常好的例子，可以作为别名存入配置文件。";}i:2;i:1266;}i:42;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1332;}i:43;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:114:"
git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' 
";i:1;N;i:2;N;}i:2;i:1332;}i:44;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1332;}i:45;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:13:"结果如下:";}i:2;i:1455;}i:46;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1474;}i:47;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:633:"
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
";i:1;N;i:2;N;}i:2;i:1474;}i:48;a:3:{i:0;s:2:"hr";i:1;a:0:{}i:2;i:2116;}i:49;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2122;}i:50;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:46:"git 如何查看某一版本文件的内容？";i:1;i:3;i:2;i:2122;}i:2;i:2122;}i:51;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:2122;}i:52;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2122;}i:53;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:72:"翻看某一文件的历史，如何查看旧版本文件的内容呢？";}i:2;i:2179;}i:54;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2251;}i:55;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:2253;}i:56;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:2253;}i:57;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:2253;}i:58;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:44:" 用 git show 查看某版本文件的内容";}i:2;i:2257;}i:59;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:2301;}i:60;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:2301;}i:61;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:2301;}i:62;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2301;}i:63;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:25:" 首先找到版本号；";}i:2;i:2304;}i:64;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2335;}i:65;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:78:"
	
git log -3   file_name   # 选择文件后3次提交的历史版本记录

";i:1;s:4:"bash";i:2;N;}i:2;i:2335;}i:66;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2335;}i:67;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:109:"找到file_name后3次提交的历史记录，确定要看第三次的提交时，file_name的文件内容；";}i:2;i:2428;}i:68;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2537;}i:69;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:75:"
	
git show cb712ee517b3e9a702:path/to/file  # 版本号：目录下文件
";i:1;s:4:"bash";i:2;N;}i:2;i:2544;}i:70;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2544;}i:71;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:112:"用git show  哈希值:文件目录/文件的模式查看内容， 文件是不包括仓库名的绝对目录。";}i:2;i:2634;}i:72;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2746;}i:73;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:2749;}i:74;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:2749;}i:75;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:2749;}i:76;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:48:" 用 git cat-file 查看某版本的文件内容";}i:2;i:2753;}i:77;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:2801;}i:78;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:2801;}i:79;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:2801;}i:80;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:120:"
	
git log del_sina_svn_usr.sh  # 查看del_sina_svn_usr.sh文件的日志，找到老版本号 cb712ee517b3e9a702a23b8
";i:1;s:4:"bash";i:2;N;}i:2;i:2809;}i:81;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2809;}i:82;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:30:"读出老版本的提交内容";}i:2;i:2944;}i:83;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2980;}i:84;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:246:"
	
# git cat-file -p cb712ee517b3e9a702a23b8
tree 8dbd87bcada6f5ac8ece519a098be9d076889e6e
parent a28eb2ad366bb42187d972fb6b9fcf99b78a447c
author Your Name <you@example.com> 1370417409 +0800
committer Your Name <you@example.com> 1370417409 +0800
";i:1;N;i:2;N;}i:2;i:2980;}i:85;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2980;}i:86;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:50:"找到文件del_sina_svn_usr.sh 实体的哈希值";}i:2;i:3236;}i:87;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3286;}i:88;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:115:"	
git ls-tree 8dbd87bcada6f5ac8ece519a
100644 blob dfba7afb79b6c5fb86c161e65b5afaa9d02fdb6e    del_sina_svn_usr.sh
";i:1;s:4:"bash";i:2;N;}i:2;i:3293;}i:89;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3293;}i:90;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:30:"查看老版本文件的内容";}i:2;i:3422;}i:91;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3452;}i:92;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:59:"
	
git cat-file -p dfba7afb79b6c5fb86c161e65b5afaa9d02fdb6
";i:1;N;i:2;N;}i:2;i:3459;}i:93;a:3:{i:0;s:2:"hr";i:1;a:0:{}i:2;i:3527;}i:94;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:3533;}i:95;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:3533;}}