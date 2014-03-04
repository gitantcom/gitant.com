a:107:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:20:"git log 日常用法";i:1;i:3;i:2;i:2;}i:2;i:2;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:2;}i:3;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:30;}i:4;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:30;}i:5;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:30;}i:6;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:38:" 只是显示sha版本号和commit log";}i:2;i:34;}i:7;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:72;}i:8;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:72;}i:9;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:72;}i:10;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:166:"
root@blog-test002 gitant.com]#  git log --oneline --graph
* 21b5cb7  backup
* 4e26248  backup
* bb993a7  backup
* 7162f48  new data
* 9aec2d2  today
* 20bbe70  back
";i:1;N;i:2;N;}i:2;i:78;}i:11;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:254;}i:12;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:254;}i:13;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:254;}i:14;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:28:" 只显示近两次的更新";}i:2;i:258;}i:15;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:286;}i:16;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:286;}i:17;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:286;}i:18;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:286;}i:19;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:107:"我们常用 -p 选项展开显示每次提交的内容差异，用 -2 则仅显示最近的两次更新：";}i:2;i:287;}i:20;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:400;}i:21;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:17:"
$ git log -p -2
";i:1;N;i:2;N;}i:2;i:400;}i:22;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:425;}i:23;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:425;}i:24;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:425;}i:25;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:23:" git 一行查看日志";}i:2;i:429;}i:26;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:452;}i:27;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:452;}i:28;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:452;}i:29;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:28:"
$ git log --pretty=oneline
";i:1;N;i:2;N;}i:2;i:458;}i:30;a:3:{i:0;s:2:"hr";i:1;a:0:{}i:2;i:494;}i:31;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:500;}i:32;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:20:"git log 常用参数";i:1;i:3;i:2;i:500;}i:2;i:500;}i:33;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:500;}i:34;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:674:"
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
";i:1;N;i:2;N;}i:2;i:534;}i:35;a:3:{i:0;s:2:"hr";i:1;a:0:{}i:2;i:1217;}i:36;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1224;}i:37;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:29:"git log 很好的参数组合";i:1;i:3;i:2;i:1224;}i:2;i:1224;}i:38;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:1224;}i:39;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1224;}i:40;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:60:"非常好的例子，可以作为别名存入配置文件。";}i:2;i:1262;}i:41;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1328;}i:42;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:114:"
git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' 
";i:1;N;i:2;N;}i:2;i:1328;}i:43;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1328;}i:44;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:13:"结果如下:";}i:2;i:1451;}i:45;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1470;}i:46;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:633:"
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
";i:1;N;i:2;N;}i:2;i:1470;}i:47;a:3:{i:0;s:2:"hr";i:1;a:0:{}i:2;i:2112;}i:48;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2118;}i:49;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:46:"git 如何查看某一版本文件的内容？";i:1;i:3;i:2;i:2118;}i:2;i:2118;}i:50;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:2118;}i:51;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2118;}i:52;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:72:"翻看某一文件的历史，如何查看旧版本文件的内容呢？";}i:2;i:2175;}i:53;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2247;}i:54;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:2249;}i:55;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:2249;}i:56;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:2249;}i:57;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:44:" 用 git show 查看某版本文件的内容";}i:2;i:2253;}i:58;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:2297;}i:59;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:2297;}i:60;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:2297;}i:61;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2297;}i:62;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:25:" 首先找到版本号；";}i:2;i:2300;}i:63;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2331;}i:64;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:78:"
	
git log -3   file_name   # 选择文件后3次提交的历史版本记录

";i:1;s:4:"bash";i:2;N;}i:2;i:2331;}i:65;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2331;}i:66;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:109:"找到file_name后3次提交的历史记录，确定要看第三次的提交时，file_name的文件内容；";}i:2;i:2424;}i:67;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2533;}i:68;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:75:"
	
git show cb712ee517b3e9a702:path/to/file  # 版本号：目录下文件
";i:1;s:4:"bash";i:2;N;}i:2;i:2540;}i:69;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2540;}i:70;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:112:"用git show  哈希值:文件目录/文件的模式查看内容， 文件是不包括仓库名的绝对目录。";}i:2;i:2630;}i:71;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2742;}i:72;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:2745;}i:73;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:2745;}i:74;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:2745;}i:75;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:48:" 用 git cat-file 查看某版本的文件内容";}i:2;i:2749;}i:76;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:2797;}i:77;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:2797;}i:78;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:2797;}i:79;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:120:"
	
git log del_sina_svn_usr.sh  # 查看del_sina_svn_usr.sh文件的日志，找到老版本号 cb712ee517b3e9a702a23b8
";i:1;s:4:"bash";i:2;N;}i:2;i:2805;}i:80;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2805;}i:81;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:30:"读出老版本的提交内容";}i:2;i:2940;}i:82;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2976;}i:83;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:246:"
	
# git cat-file -p cb712ee517b3e9a702a23b8
tree 8dbd87bcada6f5ac8ece519a098be9d076889e6e
parent a28eb2ad366bb42187d972fb6b9fcf99b78a447c
author Your Name <you@example.com> 1370417409 +0800
committer Your Name <you@example.com> 1370417409 +0800
";i:1;N;i:2;N;}i:2;i:2976;}i:84;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2976;}i:85;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:50:"找到文件del_sina_svn_usr.sh 实体的哈希值";}i:2;i:3232;}i:86;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3282;}i:87;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:115:"	
git ls-tree 8dbd87bcada6f5ac8ece519a
100644 blob dfba7afb79b6c5fb86c161e65b5afaa9d02fdb6e    del_sina_svn_usr.sh
";i:1;s:4:"bash";i:2;N;}i:2;i:3289;}i:88;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3289;}i:89;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:30:"查看老版本文件的内容";}i:2;i:3418;}i:90;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3448;}i:91;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:59:"
	
git cat-file -p dfba7afb79b6c5fb86c161e65b5afaa9d02fdb6
";i:1;N;i:2;N;}i:2;i:3455;}i:92;a:3:{i:0;s:2:"hr";i:1;a:0:{}i:2;i:3523;}i:93;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:3529;}i:94;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:50:"git log 查看每次提交变更的文件清单？";i:1;i:3;i:2;i:3529;}i:2;i:3529;}i:95;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:3529;}i:96;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3529;}i:97;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:24:"查看文件变更清单";}i:2;i:3589;}i:98;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3619;}i:99;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:165:"
git log -p shows the complete patch for each commit it lists,
while these options summarize the changes in different ways:
$ git log --name-status
$ git log --stat
";i:1;N;i:2;N;}i:2;i:3619;}i:100;a:3:{i:0;s:2:"hr";i:1;a:0:{}i:2;i:3792;}i:101;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:3798;}i:102;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:26:"git log 图示版本演进";i:1;i:3;i:2;i:3798;}i:2;i:3798;}i:103;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:3798;}i:104;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:50:"
git log --graph --pretty=oneline --abbrev-commit
";i:1;N;i:2;N;}i:2;i:3838;}i:105;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:3896;}i:106;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:3896;}}