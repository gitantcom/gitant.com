a:16:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:9:"git fetch";i:1;i:3;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:158:"Git从远程的分支获取最新的版本到本地有这样2个命令：
1. git fetch：相当于是从远程获取最新版本到本地，不会自动merge;";}i:2;i:19;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:183;}i:6;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:82:"
git fetch origin master
git log -p master..origin/master
git merge origin/master
";i:1;N;i:2;N;}i:2;i:183;}i:7;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:183;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:70:"2. git pull：相当于是从远程获取最新版本并merge到本地";}i:2;i:274;}i:9;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:350;}i:10;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:24:"
git pull origin master
";i:1;N;i:2;N;}i:2;i:350;}i:11;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:350;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:178:"上述命令其实相当于git fetch 和 git merge
在实际使用中，git fetch更安全一些
因为在merge前，我们可以查看更新情况，然后再决定是否合并.";}i:2;i:383;}i:13;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:561;}i:14;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:561;}i:15;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:561;}}