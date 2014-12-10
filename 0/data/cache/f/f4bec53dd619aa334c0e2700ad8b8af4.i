a:50:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:18:"系统级别配置";i:1;i:4;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:72:"所有用户下的所有仓库均遵守的配置信息。
/etc/gitconfig";}i:2;i:26;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:104;}i:6;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:22:"
git config --system 
";i:1;N;i:2;N;}i:2;i:104;}i:7;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:136;}i:8;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:18:"用户级别配置";i:1;i:4;i:2;i:136;}i:2;i:136;}i:9;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:136;}i:10;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:136;}i:11;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:116:"登录用户支持的配置信息。配置文件存放在主目录(home directory)一个叫~/.gitconfig 的文件中";}i:2;i:161;}i:12;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:283;}i:13;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:156:"
$ git config --global user.name "Robin Hu"
$ git config --global user.email "hudashi@gmail.com"
$ git config --global core.editor vim #vim 默认编辑器
";i:1;N;i:2;N;}i:2;i:283;}i:14;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:283;}i:15;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:12:"配置别名";}i:2;i:448;}i:16;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:466;}i:17;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:211:"
# Add some SVN-like aliases
git config --global alias.st status
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.up rebase
git config --global alias.ci commit
";i:1;N;i:2;N;}i:2;i:466;}i:18;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:686;}i:19;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:21:"仓库级别的配置";i:1;i:4;i:2;i:686;}i:2;i:686;}i:20;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:686;}i:21;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:686;}i:22;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:94:"存在在仓库 ./git/config,对仓库有效。
设置git仓库的trace的remote git 地址。";}i:2;i:714;}i:23;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:808;}i:24;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:810;}i:25;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:35:"git 配置冲突解决中diff工具";i:1;i:4;i:2;i:810;}i:2;i:810;}i:26;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:810;}i:27;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:38:"
git config merge.conflictstyle diff3
";i:1;N;i:2;N;}i:2;i:857;}i:28;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:905;}i:29;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:17:"github 403 报错";i:1;i:3;i:2;i:905;}i:2;i:905;}i:30;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:905;}i:31;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:157:"
error: The requested URL returned error: 403 while accessing https://github.com/xueshell-com/shell_script_example.git/info/refs

fatal: HTTP request failed
";i:1;N;i:2;N;}i:2;i:936;}i:32;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:936;}i:33;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:16:"解决办法：
";}i:2;i:1102;}i:34;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"fontcolor";i:1;a:2:{i:0;i:1;i:1;s:7:"#800000";}i:2;i:1;i:3;s:12:"<fc #800000>";}i:2;i:1118;}i:35;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"fontcolor";i:1;a:2:{i:0;i:3;i:1;s:27:"
git remote set-url origin ";}i:2;i:3;i:3;s:27:"
git remote set-url origin ";}i:2;i:1130;}i:36;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:48:"https://username@github.com/username/project.git";i:1;N;}i:2;i:1157;}i:37;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:9:"fontcolor";i:1;a:2:{i:0;i:4;i:1;s:4:"#ff0";}i:2;i:4;i:3;s:5:"</fc>";}i:2;i:1205;}i:38;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1210;}i:39;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1212;}i:40;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:19:"github 设置buffer";i:1;i:4;i:2;i:1212;}i:2;i:1212;}i:41;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:1212;}i:42;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1212;}i:43;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:43:"error: RPC failed; result=22, HTTP code = 0";}i:2;i:1238;}i:44;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1281;}i:45;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1281;}i:46;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:52:"解决办法：
git config http.postBuffer 524288000";}i:2;i:1283;}i:47;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1335;}i:48;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1335;}i:49;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1335;}}