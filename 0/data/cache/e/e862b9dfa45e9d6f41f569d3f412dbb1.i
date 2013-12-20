a:56:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:15:"配置用户名";i:1;i:3;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:148:"你个人的用户名称和电子邮件地址，用户名可随意修改，git 用于记录是谁提交了更新，以及更新人的联系方式。";}i:2;i:28;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:182;}i:6;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:92:"
$ git config --global user.name "lixin"
$ git config --global user.email lixin@example.com
";i:1;s:4:"bash";i:2;N;}i:2;i:182;}i:7;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:289;}i:8;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:15:"文本编辑器";i:1;i:3;i:2;i:289;}i:2;i:289;}i:9;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:289;}i:10;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:289;}i:11;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:173:"在需要输入必要的文本信息时调用，比如提交更新时忘了加注释。一般情况会用系统默认的编辑器，比如Vi、Vim。当然也可以自定：";}i:2;i:314;}i:12;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:493;}i:13;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:41:"
$ git config --global core.editor emacs
";i:1;s:4:"bash";i:2;N;}i:2;i:493;}i:14;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:549;}i:15;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:18:"差异分析工具";i:1;i:3;i:2;i:549;}i:2;i:549;}i:16;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:549;}i:17;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:549;}i:18;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:49:"在解决冲突时经常用到，一般为vimdiff";}i:2;i:577;}i:19;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:632;}i:20;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:42:"
$ git config --global merge.tool vimdiff
";i:1;s:4:"bash";i:2;N;}i:2;i:632;}i:21;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:689;}i:22;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:12:"自动高亮";i:1;i:3;i:2;i:689;}i:2;i:689;}i:23;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:689;}i:24;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:689;}i:25;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:78:"很有用的颜色提示，因有些人不喜欢，所以默认是不开启的";}i:2;i:711;}i:26;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:795;}i:27;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:37:"
$ git config --global color.ui auto
";i:1;s:4:"bash";i:2;N;}i:2;i:795;}i:28;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:847;}i:29;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:12:"查看配置";i:1;i:3;i:2;i:847;}i:2;i:847;}i:30;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:847;}i:31;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:847;}i:32;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:18:"查看所有配置";}i:2;i:869;}i:33;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:893;}i:34;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:21:"
$ git config --list
";i:1;s:4:"bash";i:2;N;}i:2;i:893;}i:35;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:893;}i:36;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:41:"查看某个配置
$ git config user.name";}i:2;i:929;}i:37;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:970;}i:38;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:972;}i:39;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:15:"git配置文件";i:1;i:3;i:2;i:972;}i:2;i:972;}i:40;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:972;}i:41;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:972;}i:42;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:238:"/etc/gitconfig 对所有用户有效  
~/.gitconfig 对当前用户有效  
{工作目录}/.git/config 仅对当前项目有效  
$HOME 或者 C:Documents and Settings$USER 下的.gitconfig  
git安装目录下的/etc/gitconfig  
同上  ";}i:2;i:997;}i:43;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1235;}i:44;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1235;}i:45;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:42:"在类 unix 系统中，配置文件为：";}i:2;i:1237;}i:46;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1279;}i:47;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1279;}i:48;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:31:"在Windows中对应分别为：";}i:2;i:1281;}i:49;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1312;}i:50;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1312;}i:51;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:15:"对应命令：";}i:2;i:1314;}i:52;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1335;}i:53;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:83:"
$ git config --system
$ git config --global
$ git config --local 或 $ git config
";i:1;s:4:"bash";i:2;N;}i:2;i:1335;}i:54;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1433;}i:55;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1433;}}