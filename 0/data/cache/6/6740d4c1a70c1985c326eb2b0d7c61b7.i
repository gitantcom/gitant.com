a:19:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:39:"git中如何合并某个指定文件？";i:1;i:3;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:99:"分支A_bracn和B_branch，只想将A_branch分支的某个文件f.txt合并到B_branch分支上。";}i:2;i:50;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:155;}i:6;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:70:"
	
$git checkout A_branch
      
$git checkout --patch B_branch f.txt
";i:1;s:4:"bash";i:2;N;}i:2;i:155;}i:7;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:155;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:38:"第一个命令： 切换到A分支；";}i:2;i:239;}i:9;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:277;}i:10;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:277;}i:11;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:157:"第二个命令：合并B分支上f文件到A分支上，将B分支上 f 文件追加补丁到A分支上 f文件。你可以接受或者拒绝补丁内容。";}i:2;i:279;}i:12;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:436;}i:13;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:436;}i:14;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:80:"如果只是简单的将A_branch分支的文件f.txt copy到B_branch分支上；";}i:2;i:440;}i:15;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:520;}i:16;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:73:"
	
$git checkout B_branch
$cd path/to/f.txt
$git checkout A_bracn  f.txt
";i:1;s:4:"bash";i:2;N;}i:2;i:527;}i:17;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:613;}i:18;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:613;}}