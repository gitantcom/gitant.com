a:66:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:39:"git中如何合并某个指定文件？";i:1;i:3;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:99:"分支A_bracn和B_branch，只想将A_branch分支的某个文件f.txt合并到B_branch分支上。";}i:2;i:50;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:155;}i:6;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:70:"
	
$git checkout A_branch
      
$git checkout --patch B_branch f.txt
";i:1;s:4:"bash";i:2;N;}i:2;i:155;}i:7;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:155;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:38:"第一个命令： 切换到A分支；";}i:2;i:239;}i:9;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:277;}i:10;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:277;}i:11;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:157:"第二个命令：合并B分支上f文件到A分支上，将B分支上 f 文件追加补丁到A分支上 f文件。你可以接受或者拒绝补丁内容。";}i:2;i:279;}i:12;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:436;}i:13;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:436;}i:14;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:80:"如果只是简单的将A_branch分支的文件f.txt copy到B_branch分支上；";}i:2;i:440;}i:15;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:520;}i:16;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:73:"
	
$git checkout B_branch
$cd path/to/f.txt
$git checkout A_bracn  f.txt
";i:1;s:4:"bash";i:2;N;}i:2;i:527;}i:17;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:616;}i:18;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:36:"如何合并某个版本的分支？";i:1;i:3;i:2;i:616;}i:2;i:616;}i:19;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:616;}i:20;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:616;}i:21;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:139:"在本地 master 分支上做了一个commit ( 38361a68138140827b31b72f8bbfd88b3705d77a ) ， 如何把它放到 本地 old_cc 分支上？";}i:2;i:664;}i:22;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:803;}i:23;a:3:{i:0;s:2:"hr";i:1;a:0:{}i:2;i:803;}i:24;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:803;}i:25;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:56:"办法之一： 使用 cherry-pick.  根据git 文档：";}i:2;i:810;}i:26;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:866;}i:27;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:866;}i:28;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:53:"Apply the changes introduced by some existing commits";}i:2;i:868;}i:29;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:921;}i:30;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:921;}i:31;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:74:"就是对已经存在的commit 进行apply (可以理解为再次提交）";}i:2;i:923;}i:32;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:997;}i:33;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:997;}i:34;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:15:"简单用法：";}i:2;i:999;}i:35;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1015;}i:36;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:29:"  git cherry-pick <commit id>";}i:2;i:1015;}i:37;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1015;}i:38;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:9:"例如：";}i:2;i:1051;}i:39;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1066;}i:40;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:91:"
$ git checkout old_cc
$ git cherry-pick 38361a68     # 这个 38361a68 号码，位于：
";i:1;N;i:2;N;}i:2;i:1066;}i:41;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:166:" 

    $ git log

    commit 38361a68138140827b31b72f8bbfd88b3705d77a
    Author: Siwei Shen <siwei.shen@focusbeijing.com>
    Date:   Sat Dec 10 00:09:44 2011 +0800
";i:1;N;i:2;N;}i:2;i:1172;}i:42;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1172;}i:43;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:48:"1. 如果顺利，就会正常提交。结果：";}i:2;i:1348;}i:44;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1402;}i:45;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:114:"
    Finished one cherry-pick.
    # On branch old_cc
    # Your branch is ahead of 'origin/old_cc' by 3 commits.
";i:1;N;i:2;N;}i:2;i:1402;}i:46;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1402;}i:47;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:51:"2. 如果在cherry-pick 的过程中出现了冲突";}i:2;i:1526;}i:48;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1583;}i:49;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:240:"
    Automatic cherry-pick failed.  After resolving the conflicts,
    mark the corrected paths with 'git add <paths>' or 'git rm <paths>'
    and commit the result with:

            git commit -c 15a2b6c61927e5aed6718de89ad9dafba939a90b

";i:1;N;i:2;N;}i:2;i:1583;}i:50;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1583;}i:51;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:45:"就跟普通的冲突一样，手工解决：";}i:2;i:1832;}i:52;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1883;}i:53;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:202:"
 $ git status    # 看哪些文件出现冲突
 both modified:      app/models/user.rb
 $ vim app/models/user.rb  # 手动解决它。
 $ git add app/models/user.rb
 git commit -c <新的commit号码>
";i:1;N;i:2;N;}i:2;i:1883;}i:54;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2095;}i:55;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:21:"如何取消git merge";i:1;i:3;i:2;i:2095;}i:2;i:2095;}i:56;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:2095;}i:57;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2095;}i:58;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:179:"git  执行reset，remerge ,rebase 时把当前的仓库提交记录由HEAD保存改为ORIG_HEAD,所以撤回合并只需要将当前指向重新返回到PRIG_HEAD就实现了。 ";}i:2;i:2125;}i:59;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2304;}i:60;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2304;}i:61;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:125:"多次之前的合并动作，需要先执行 git reflog查看提交时哈希值，然后回退到一个指定的哈希值。";}i:2;i:2306;}i:62;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2431;}i:63;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:30:"

git reset --hard ORIG_HEAD

";i:1;N;i:2;N;}i:2;i:2438;}i:64;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2477;}i:65;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:2477;}}