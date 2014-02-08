a:42:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:36:"如何合并某个版本的分支？";i:1;i:3;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:139:"在本地 master 分支上做了一个commit ( 38361a68138140827b31b72f8bbfd88b3705d77a ) ， 如何把它放到 本地 old_cc 分支上？";}i:2;i:49;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:188;}i:6;a:3:{i:0;s:2:"hr";i:1;a:0:{}i:2;i:188;}i:7;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:188;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:56:"办法之一： 使用 cherry-pick.  根据git 文档：";}i:2;i:195;}i:9;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:251;}i:10;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:251;}i:11;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:53:"Apply the changes introduced by some existing commits";}i:2;i:253;}i:12;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:306;}i:13;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:306;}i:14;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:74:"就是对已经存在的commit 进行apply (可以理解为再次提交）";}i:2;i:308;}i:15;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:382;}i:16;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:382;}i:17;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:15:"简单用法：";}i:2;i:384;}i:18;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:400;}i:19;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:29:"  git cherry-pick <commit id>";}i:2;i:400;}i:20;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:400;}i:21;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:9:"例如：";}i:2;i:436;}i:22;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:451;}i:23;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:91:"
$ git checkout old_cc
$ git cherry-pick 38361a68     # 这个 38361a68 号码，位于：
";i:1;N;i:2;N;}i:2;i:451;}i:24;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:166:" 

    $ git log

    commit 38361a68138140827b31b72f8bbfd88b3705d77a
    Author: Siwei Shen <siwei.shen@focusbeijing.com>
    Date:   Sat Dec 10 00:09:44 2011 +0800
";i:1;N;i:2;N;}i:2;i:557;}i:25;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:557;}i:26;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:48:"1. 如果顺利，就会正常提交。结果：";}i:2;i:733;}i:27;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:787;}i:28;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:114:"
    Finished one cherry-pick.
    # On branch old_cc
    # Your branch is ahead of 'origin/old_cc' by 3 commits.
";i:1;N;i:2;N;}i:2;i:787;}i:29;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:787;}i:30;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:51:"2. 如果在cherry-pick 的过程中出现了冲突";}i:2;i:911;}i:31;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:968;}i:32;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:240:"
    Automatic cherry-pick failed.  After resolving the conflicts,
    mark the corrected paths with 'git add <paths>' or 'git rm <paths>'
    and commit the result with:

            git commit -c 15a2b6c61927e5aed6718de89ad9dafba939a90b

";i:1;N;i:2;N;}i:2;i:968;}i:33;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:968;}i:34;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:95:"就跟普通的冲突一样，手工解决：
2.1 $ git status    # 看哪些文件出现冲突";}i:2;i:1217;}i:35;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1313;}i:36;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:40:"  both modified:      app/models/user.rb";}i:2;i:1313;}i:37;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1313;}i:38;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:122:"2.2 $ vim app/models/user.rb  # 手动解决它。
2.3 $ git add app/models/user.rb
2.4 git commit -c <新的commit号码>";}i:2;i:1359;}i:39;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1481;}i:40;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1481;}i:41;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1481;}}