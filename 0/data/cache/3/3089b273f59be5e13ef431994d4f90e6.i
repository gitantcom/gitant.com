a:46:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:46:"git 如何查看某一版本文件的内容？";i:1;i:3;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:72:"翻看某一文件的历史，如何查看旧版本文件的内容呢？";}i:2;i:57;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:129;}i:6;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:131;}i:7;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:131;}i:8;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:131;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:44:" 用 git show 查看某版本文件的内容";}i:2;i:135;}i:10;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:179;}i:11;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:179;}i:12;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:179;}i:13;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:179;}i:14;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:25:" 首先找到版本号；";}i:2;i:182;}i:15;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:213;}i:16;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:78:"
	
git log -3   file_name   # 选择文件后3次提交的历史版本记录

";i:1;s:4:"bash";i:2;N;}i:2;i:213;}i:17;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:213;}i:18;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:109:"找到file_name后3次提交的历史记录，确定要看第三次的提交时，file_name的文件内容；";}i:2;i:306;}i:19;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:415;}i:20;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:75:"
	
git show cb712ee517b3e9a702:path/to/file  # 版本号：目录下文件
";i:1;s:4:"bash";i:2;N;}i:2;i:422;}i:21;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:422;}i:22;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:112:"用git show  哈希值:文件目录/文件的模式查看内容， 文件是不包括仓库名的绝对目录。";}i:2;i:512;}i:23;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:624;}i:24;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:627;}i:25;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:627;}i:26;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:627;}i:27;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:48:" 用 git cat-file 查看某版本的文件内容";}i:2;i:631;}i:28;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:679;}i:29;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:679;}i:30;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:679;}i:31;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:120:"
	
git log del_sina_svn_usr.sh  # 查看del_sina_svn_usr.sh文件的日志，找到老版本号 cb712ee517b3e9a702a23b8
";i:1;s:4:"bash";i:2;N;}i:2;i:687;}i:32;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:687;}i:33;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:30:"读出老版本的提交内容";}i:2;i:822;}i:34;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:858;}i:35;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:246:"
	
# git cat-file -p cb712ee517b3e9a702a23b8
tree 8dbd87bcada6f5ac8ece519a098be9d076889e6e
parent a28eb2ad366bb42187d972fb6b9fcf99b78a447c
author Your Name <you@example.com> 1370417409 +0800
committer Your Name <you@example.com> 1370417409 +0800
";i:1;N;i:2;N;}i:2;i:858;}i:36;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:858;}i:37;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:50:"找到文件del_sina_svn_usr.sh 实体的哈希值";}i:2;i:1114;}i:38;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1164;}i:39;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:115:"	
git ls-tree 8dbd87bcada6f5ac8ece519a
100644 blob dfba7afb79b6c5fb86c161e65b5afaa9d02fdb6e    del_sina_svn_usr.sh
";i:1;s:4:"bash";i:2;N;}i:2;i:1171;}i:40;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1171;}i:41;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:30:"查看老版本文件的内容";}i:2;i:1300;}i:42;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1330;}i:43;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:59:"
	
git cat-file -p dfba7afb79b6c5fb86c161e65b5afaa9d02fdb6
";i:1;N;i:2;N;}i:2;i:1337;}i:44;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1407;}i:45;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1407;}}