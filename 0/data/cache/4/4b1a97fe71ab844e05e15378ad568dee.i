a:24:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:33:"增加变更文件到缓存状态";i:1;i:3;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:1;}i:3;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:17:"
git add  <file>
";i:1;N;i:2;N;}i:2;i:49;}i:4;a:3:{i:0;s:2:"hr";i:1;a:0:{}i:2;i:74;}i:5;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:81;}i:6;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:30:"如何只提交部分文件？";i:1;i:3;i:2;i:81;}i:2;i:81;}i:7;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:81;}i:8;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:72:"
$git add --interactive  <file>  #方法1

$git add -p <file>  #方法2
";i:1;s:4:"bash";i:2;N;}i:2;i:126;}i:9;a:3:{i:0;s:2:"hr";i:1;a:0:{}i:2;i:212;}i:10;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:219;}i:11;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:51:"如何取消已经执行缓存(git add)的变更？";i:1;i:3;i:2;i:219;}i:2;i:219;}i:12;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:219;}i:13;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:219;}i:14;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:52:"已经执行了git add，如何取消缓存状态？";}i:2;i:280;}i:15;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:338;}i:16;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:24:"
 git reset HEAD <file>
";i:1;s:1:"?";i:2;N;}i:2;i:338;}i:17;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:338;}i:18;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:18:"或者新方法：";}i:2;i:373;}i:19;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:397;}i:20;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:38:"
git rm --cached <added_file_to_undo>
";i:1;N;i:2;N;}i:2;i:397;}i:21;a:3:{i:0;s:2:"hr";i:1;a:0:{}i:2;i:443;}i:22;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:449;}i:23;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:449;}}