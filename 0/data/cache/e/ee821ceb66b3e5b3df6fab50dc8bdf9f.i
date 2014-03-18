a:73:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:24:"创建本地新分支？";i:1;i:3;i:2;i:4;}i:2;i:4;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:4;}i:3;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:58:"
$ git checkout -b alvin
Switched to a new branch 'alvin'
";i:1;s:4:"bash";i:2;N;}i:2;i:42;}i:4;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:116;}i:5;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:21:"切换到不同分支";i:1;i:3;i:2;i:116;}i:2;i:116;}i:6;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:116;}i:7;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:28:"
git checkout <branch-name>
";i:1;N;i:2;N;}i:2;i:151;}i:8;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:189;}i:9;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:18:"删除本地分支";i:1;i:3;i:2;i:189;}i:2;i:189;}i:10;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:189;}i:11;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:136:"
$ git branch -d simon
error: The branch 'simon' is not fully merged.
If you are sure you want to delete it, run
'git branch -D simon'.
";i:1;s:4:"bash";i:2;N;}i:2;i:221;}i:12;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:373;}i:13;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:39:"删除远端仓库的分支和标签？";i:1;i:3;i:2;i:373;}i:2;i:373;}i:14;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:373;}i:15;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:373;}i:16;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:422;}i:17;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:29:"删除origin上的simon分支";}i:2;i:424;}i:18;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:453;}i:19;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:455;}i:20;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:461;}i:21;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:26:"
$ git push origin :simon
";i:1;N;i:2;N;}i:2;i:461;}i:22;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:461;}i:23;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:497;}i:24;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:18:"删除远程分支";}i:2;i:499;}i:25;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:517;}i:26;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:519;}i:27;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:519;}i:28;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:68:"在Git v1.7.0 之后，可以使用这种语法删除远程分支：";}i:2;i:521;}i:29;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:595;}i:30;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:39:"
git push origin --delete <branchName>
";i:1;N;i:2;N;}i:2;i:595;}i:31;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:39:"
git push origin --delete <branchName>
";i:1;N;i:2;N;}i:2;i:648;}i:32;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:648;}i:33;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:696;}i:34;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:15:"删除远程tag";}i:2;i:698;}i:35;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:713;}i:36;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:715;}i:37;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:721;}i:38;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:40:"
git push origin --delete tag <tagname>
";i:1;N;i:2;N;}i:2;i:721;}i:39;a:3:{i:0;s:2:"hr";i:1;a:0:{}i:2;i:773;}i:40;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:784;}i:41;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:27:"修改本地分支名称？";i:1;i:3;i:2;i:784;}i:2;i:784;}i:42;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:784;}i:43;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:39:"
$ git branch -m old_branch new_branch
";i:1;N;i:2;N;}i:2;i:825;}i:44;a:3:{i:0;s:2:"hr";i:1;a:0:{}i:2;i:873;}i:45;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:880;}i:46;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:33:"修改远端仓库分支名称？";i:1;i:3;i:2;i:880;}i:2;i:880;}i:47;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:880;}i:48;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:880;}i:49;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:72:"没有直接的方法改名，可以如下方式修改远端分支名。";}i:2;i:922;}i:50;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1000;}i:51;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:105:"
$ git push -u origin new_branch #创建远端新分支
$ git push origin :old_branch   #删除旧分支
";i:1;s:4:"bash";i:2;N;}i:2;i:1000;}i:52;a:3:{i:0;s:2:"hr";i:1;a:0:{}i:2;i:1118;}i:53;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1125;}i:54;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:28:"设置远程分支的跟踪?";i:1;i:3;i:2;i:1125;}i:2;i:1125;}i:55;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:1125;}i:56;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1125;}i:57;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:60:"你在本地克隆了一个仓库，远端有一个分支叫";}i:2;i:1163;}i:58;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:1223;}i:59;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:11:"some_branch";}i:2;i:1224;}i:60;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:1235;}i:61;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:244:"，如何设置本地仓库跟踪它呢？
Assuming there is a remote repository that you cloned your local repository from and also assuming that there is a branch named 'some_branch' on that remote repository, here is how to track it locally:";}i:2;i:1236;}i:62;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1480;}i:63;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:283:"
# list remote branches
git branch -r

# start tracking one remote branch
git branch --track some_branch origin/some_branch

# change to the branch locally
git checkout some_branch

# make changes and commit them locally
....

# push your changes to the remote repository:
git push

";i:1;s:4:"bash";i:2;N;}i:2;i:1487;}i:64;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1785;}i:65;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:51:"如何查看本地分支跟踪远程那个分支？";i:1;i:3;i:2;i:1785;}i:2;i:1785;}i:66;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:1785;}i:67;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1785;}i:68;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:87:"本地有很多分支，如何知道远程分支和本地那个分支有跟踪关系：";}i:2;i:1846;}i:69;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1939;}i:70;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:17:"
$git branch -vv
";i:1;N;i:2;N;}i:2;i:1939;}i:71;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1966;}i:72;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1966;}}