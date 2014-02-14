a:46:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:18:"本地新分支？";i:1;i:3;i:2;i:4;}i:2;i:4;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:4;}i:3;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:58:"
$ git checkout -b alvin
Switched to a new branch 'alvin'
";i:1;s:4:"bash";i:2;N;}i:2;i:36;}i:4;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:110;}i:5;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:12:"转换分支";i:1;i:3;i:2;i:110;}i:2;i:110;}i:6;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:110;}i:7;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:28:"
git checkout <branch-name>
";i:1;N;i:2;N;}i:2;i:136;}i:8;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:174;}i:9;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:18:"本地删除分支";i:1;i:3;i:2;i:174;}i:2;i:174;}i:10;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:174;}i:11;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:136:"
$ git branch -d simon
error: The branch 'simon' is not fully merged.
If you are sure you want to delete it, run
'git branch -D simon'.
";i:1;s:4:"bash";i:2;N;}i:2;i:206;}i:12;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:358;}i:13;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:30:"删除远端仓库的分支？";i:1;i:3;i:2;i:358;}i:2;i:358;}i:14;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:358;}i:15;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:358;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:32:"删除origin上的simon分支？";}i:2;i:397;}i:17;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:435;}i:18;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:26:"
$ git push origin :simon
";i:1;N;i:2;N;}i:2;i:435;}i:19;a:3:{i:0;s:2:"hr";i:1;a:0:{}i:2;i:469;}i:20;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:480;}i:21;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:27:"修改本地分支名称？";i:1;i:3;i:2;i:480;}i:2;i:480;}i:22;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:480;}i:23;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:39:"
$ git branch -m old_branch new_branch
";i:1;N;i:2;N;}i:2;i:521;}i:24;a:3:{i:0;s:2:"hr";i:1;a:0:{}i:2;i:569;}i:25;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:576;}i:26;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:33:"修改远端仓库分支名称？";i:1;i:3;i:2;i:576;}i:2;i:576;}i:27;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:576;}i:28;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:576;}i:29;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:72:"没有直接的方法改名，可以如下方式修改远端分支名。";}i:2;i:618;}i:30;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:696;}i:31;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:105:"
$ git push -u origin new_branch #创建远端新分支
$ git push origin :old_branch   #删除旧分支
";i:1;s:4:"bash";i:2;N;}i:2;i:696;}i:32;a:3:{i:0;s:2:"hr";i:1;a:0:{}i:2;i:814;}i:33;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:821;}i:34;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:28:"设置远程分支的跟踪?";i:1;i:3;i:2;i:821;}i:2;i:821;}i:35;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:821;}i:36;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:821;}i:37;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:60:"你在本地克隆了一个仓库，远端有一个分支叫";}i:2;i:859;}i:38;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:919;}i:39;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:11:"some_branch";}i:2;i:920;}i:40;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:931;}i:41;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:244:"，如何设置本地仓库跟踪它呢？
Assuming there is a remote repository that you cloned your local repository from and also assuming that there is a branch named 'some_branch' on that remote repository, here is how to track it locally:";}i:2;i:932;}i:42;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1176;}i:43;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:283:"
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

";i:1;s:4:"bash";i:2;N;}i:2;i:1183;}i:44;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1480;}i:45;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1480;}}