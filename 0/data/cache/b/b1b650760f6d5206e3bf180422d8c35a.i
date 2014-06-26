a:136:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:12:"简短的SHA";i:1;i:3;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:87:"Git 每次提条根据内容生成一个HAS-1的值，这个值作为唯一标示符。";}i:2;i:22;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:109;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:109;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:120:"例如，想要查看一次指定的提交，假设你运行 git log 命令并找到你增加了功能的那次提交：";}i:2;i:111;}i:8;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:237;}i:9;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:553:"
$ git log
commit 734713bc047d87bf7eac9674765ae793478c50d3
Author: Scott Chacon <schacon@gmail.com>
Date:   Fri Jan 2 18:32:33 2009 -0800

    fixed refs handling, added gc auto, updated tests

commit d921970aadf03b3cf0e71becdaab3147ba71cdef
Merge: 1c002dd... 35cfb2b...
Author: Scott Chacon <schacon@gmail.com>
Date:   Thu Dec 11 15:08:43 2008 -0800

    Merge commit 'phedders/rdocs'

commit 1c002dd4b536e7479fe34593e72e6c6c1819e53b
Author: Scott Chacon <schacon@gmail.com>
Date:   Thu Dec 11 14:58:32 2008 -0800

    added some blame and merge stuff
";i:1;N;i:2;N;}i:2;i:237;}i:10;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:237;}i:11;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:17:"假设是 1c002dd";}i:2;i:799;}i:12;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:816;}i:13;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:111:". 。如果你想 git show 这次提交，下面的命令是等价的（假设简短的版本没有歧义）：";}i:2;i:819;}i:14;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:936;}i:15;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:101:"
$ git show 1c002dd4b536e7479fe34593e72e6c6c1819e53b
$ git show 1c002dd4b536e7479f
$ git show 1c002d
";i:1;N;i:2;N;}i:2;i:936;}i:16;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1047;}i:17;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:12:"分支引用";i:1;i:3;i:2;i:1047;}i:2;i:1047;}i:18;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:1047;}i:19;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1047;}i:20;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:340:"指明一次提交的最直接的方法要求有一个指向它的分支引用。这样，你就可以在任何需要一个提交对象或者 SHA-1 值的 Git 命令中使用该分支名称了。如果你想要显示一个分支的最后一次提交的对象，例如假设 topic1 分支指向 ca82a6d，那么下面的命令是等价的：";}i:2;i:1068;}i:21;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1414;}i:22;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:71:"
$ git show ca82a6dff817ec66f44342007202690a93763949
$ git show topic1
";i:1;N;i:2;N;}i:2;i:1414;}i:23;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1414;}i:24;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:456:"如果你想知道某个分支指向哪个特定的 SHA，或者想看任何一个例子中被简写的 SHA-1，你可以使用一个叫做 rev-parse 的 Git 探测工具。在第 9 章你可以看到关于探测工具的更多信息；简单来说，rev-parse 是为了底层操作而不是日常操作设计的。不过，有时你想看 Git 现在到底处于什么状态时，它可能会很有用。这里你可以对你的分支运执行 rev-parse。";}i:2;i:1494;}i:25;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1956;}i:26;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:65:"
$ git rev-parse topic1
ca82a6dff817ec66f44342007202690a93763949
";i:1;N;i:2;N;}i:2;i:1956;}i:27;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2031;}i:28;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:24:"引用日志里的简称";i:1;i:3;i:2;i:2031;}i:2;i:2031;}i:29;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:2031;}i:30;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2031;}i:31;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:206:"在你工作的同时，Git 在后台的工作之一就是保存一份引用日志——一份记录最近几个月你的 HEAD 和分支引用的日志。
你可以使用 git reflog 来查看引用日志：";}i:2;i:2064;}i:32;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2276;}i:33;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:449:"
$ git reflog
734713b... HEAD@{0}: commit: fixed refs handling, added gc auto, updated
d921970... HEAD@{1}: merge phedders/rdocs: Merge made by recursive.
1c002dd... HEAD@{2}: commit: added some blame and merge stuff
1c36188... HEAD@{3}: rebase -i (squash): updating HEAD
95df984... HEAD@{4}: commit: # This is a combination of two commits.
1c36188... HEAD@{5}: rebase -i (squash): updating HEAD
7e05da5... HEAD@{6}: rebase -i (pick): updating HEAD
";i:1;N;i:2;N;}i:2;i:2276;}i:34;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2276;}i:35;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:292:"每次你的分支顶端因为某些原因被修改时，Git 就会为你将信息保存在这个临时历史记录里面。你也可以使用这份数据来指明更早的分支。如果你想查看仓库中 HEAD 在五次前的值，你可以使用引用日志的输出中的 @{n} 引用：";}i:2;i:2734;}i:36;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3032;}i:37;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:21:"
$ git show HEAD@{5}
";i:1;N;i:2;N;}i:2;i:3032;}i:38;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3032;}i:39;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:140:"你也可以使用这个语法来查看一定时间前分支指向哪里。例如，想看你的 master 分支昨天在哪，你可以输入";}i:2;i:3062;}i:40;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3208;}i:41;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:31:"
$ git show master@{yesterday}
";i:1;N;i:2;N;}i:2;i:3208;}i:42;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3208;}i:43;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:162:"它就会显示昨天分支的顶端在哪。这项技术只对还在你引用日志里的数据有用，所以不能用来查看比几个月前还早的提交。";}i:2;i:3248;}i:44;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3410;}i:45;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3410;}i:46;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:92:"想要看类似于 git log 输出格式的引用日志信息，你可以运行 git log -g：";}i:2;i:3412;}i:47;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3510;}i:48;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:607:"
$ git log -g master
commit 734713bc047d87bf7eac9674765ae793478c50d3
Reflog: master@{0} (Scott Chacon <schacon@gmail.com>)
Reflog message: commit: fixed refs handling, added gc auto, updated 
Author: Scott Chacon <schacon@gmail.com>
Date:   Fri Jan 2 18:32:33 2009 -0800

    fixed refs handling, added gc auto, updated tests

commit d921970aadf03b3cf0e71becdaab3147ba71cdef
Reflog: master@{1} (Scott Chacon <schacon@gmail.com>)
Reflog message: merge phedders/rdocs: Merge made by recursive.
Author: Scott Chacon <schacon@gmail.com>
Date:   Thu Dec 11 15:08:43 2008 -0800

    Merge commit 'phedders/rdocs'
";i:1;N;i:2;N;}i:2;i:3510;}i:49;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3510;}i:50;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:434:"需要注意的是，日志引用信息只存在于本地——这是一个你在仓库里做过什么的日志。其他人的仓库拷贝里的引用和你的相同；而你新克隆一个仓库的时候，引用日志是空的，因为你在仓库里还没有操作。只有你克隆了一个项目至少两个月，git show HEAD@{2.months.ago} 才会有用——如果你是五分钟前克隆的仓库，将不会有结果返回。";}i:2;i:4126;}i:51;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4560;}i:52;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:4563;}i:53;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:12:"祖先引用";i:1;i:3;i:2;i:4563;}i:2;i:4563;}i:54;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:4563;}i:55;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4563;}i:56;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:193:"另一种指明某次提交的常用方法是通过它的祖先。如果你在引用最后加上一个 ^，Git 将其理解为此次提交的父提交。 假设你的工程历史是这样的：";}i:2;i:4585;}i:57;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4784;}i:58;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:301:"
$ git log --pretty=format:'%h %s' --graph
* 734713b fixed refs handling, added gc auto, updated tests
*   d921970 Merge commit 'phedders/rdocs'
|\  
| * 35cfb2b Some rdoc changes
* | 1c002dd added some blame and merge stuff
|/  
* 1c36188 ignore *.gem
* 9b29157 add open3_detach to gemspec file list
";i:1;N;i:2;N;}i:2;i:4784;}i:59;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4784;}i:60;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:92:"那么，想看上一次提交，你可以使用 HEAD^，意思是“HEAD 的父提交”：";}i:2;i:5094;}i:61;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5192;}i:62;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:210:"
$ git show HEAD^
commit d921970aadf03b3cf0e71becdaab3147ba71cdef
Merge: 1c002dd... 35cfb2b...
Author: Scott Chacon <schacon@gmail.com>
Date:   Thu Dec 11 15:08:43 2008 -0800

    Merge commit 'phedders/rdocs'
";i:1;N;i:2;N;}i:2;i:5192;}i:63;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5192;}i:64;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:285:"你也可以在 ^ 后添加一个数字——例如，d921970^2 意思是“d921970 的第二父提交”。这种语法只在合并提交时有用，因为合并提交可能有多个父提交。第一父提交是你合并时所在分支，而第二父提交是你所合并的分支：";}i:2;i:5412;}i:65;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5703;}i:66;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:360:"
$ git show d921970^
commit 1c002dd4b536e7479fe34593e72e6c6c1819e53b
Author: Scott Chacon <schacon@gmail.com>
Date:   Thu Dec 11 14:58:32 2008 -0800

    added some blame and merge stuff

$ git show d921970^2
commit 35cfb2b795a55793d7cc56a6cc2060b4bb732548
Author: Paul Hedderly <paul+git@mjr.org>
Date:   Wed Dec 10 22:22:03 2008 +0000

    Some rdoc changes
";i:1;N;i:2;N;}i:2;i:5703;}i:67;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5703;}i:68;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:372:"另外一个指明祖先提交的方法是 ~。这也是指向第一父提交，所以 HEAD~ 和 HEAD^ 是等价的。当你指定数字的时候就明显不一样了。HEAD~2 是指“第一父提交的第一父提交”，也就是“祖父提交”——它会根据你指定的次数检索第一父提交。例如，在上面列出的历史记录里面，HEAD~3 会是";}i:2;i:6072;}i:69;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6450;}i:70;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:168:"
$ git show HEAD~3
commit 1c3618887afb5fbcbea25b7c013f4e2114448b8d
Author: Tom Preston-Werner <tom@mojombo.com>
Date:   Fri Nov 7 13:47:59 2008 -0500

    ignore *.gem
";i:1;N;i:2;N;}i:2;i:6450;}i:71;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6450;}i:72;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:89:"也可以写成 HEAD^^^，同样是第一父提交的第一父提交的第一父提交：";}i:2;i:6627;}i:73;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6722;}i:74;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:169:"
$ git show HEAD^^^
commit 1c3618887afb5fbcbea25b7c013f4e2114448b8d
Author: Tom Preston-Werner <tom@mojombo.com>
Date:   Fri Nov 7 13:47:59 2008 -0500

    ignore *.gem
";i:1;N;i:2;N;}i:2;i:6722;}i:75;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6722;}i:76;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:142:"你也可以混合使用这些语法——你可以通过 HEAD~3^2 指明先前引用的第二父提交（假设它是一个合并提交）。";}i:2;i:6900;}i:77;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:7042;}i:78;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:7044;}i:79;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:12:"提交范围";i:1;i:3;i:2;i:7044;}i:2;i:7044;}i:80;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:7044;}i:81;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:7044;}i:82;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:313:"现在你已经可以指明单次的提交，让我们来看看怎样指明一定范围的提交。这在你管理分支的时候尤显重要——如果你有很多分支，你可以指明范围来圈定一些问题的答案，比如：“这个分支上我有哪些工作还没合并到主分支的？”
双点";}i:2;i:7066;}i:83;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:7379;}i:84;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:7379;}i:85;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:223:"最常用的指明范围的方法是双点的语法。这种语法主要是让 Git 区分出可从一个分支中获得而不能从另一个分支中获得的提交。例如，假设你有类似于图 6-1 的提交历史。";}i:2;i:7381;}i:86;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:7604;}i:87;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:7604;}i:88;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:42:"图 6-1. 范围选择的提交历史实例";}i:2;i:7606;}i:89;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:7648;}i:90;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:7648;}i:91;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:392:"你想要查看你的试验分支上哪些没有被提交到主分支，那么你就可以使用 master..experiment 来让 Git 显示这些提交的日志——这句话的意思是“所有可从experiment分支中获得而不能从master分支中获得的提交”。为了使例子简单明了，我使用了图标中提交对象的字母来代替真实日志的输出，所以会显示：";}i:2;i:7650;}i:92;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:8048;}i:93;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:34:"
$ git log master..experiment
D
C
";i:1;N;i:2;N;}i:2;i:8048;}i:94;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:8048;}i:95;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:224:"另一方面，如果你想看相反的——所有在 master 而不在 experiment 中的分支——你可以交换分支的名字。experiment..master 显示所有可在 master 获得而在 experiment 中不能的提交：";}i:2;i:8091;}i:96;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:8321;}i:97;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:34:"
$ git log experiment..master
F
E
";i:1;N;i:2;N;}i:2;i:8321;}i:98;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:8321;}i:99;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:174:"这在你想保持 experiment 分支最新和预览你将合并的提交的时候特别有用。这个语法的另一种常见用途是查看你将把什么推送到远程：";}i:2;i:8364;}i:100;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:8544;}i:101;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:31:"
$ git log origin/master..HEAD
";i:1;N;i:2;N;}i:2;i:8544;}i:102;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:8544;}i:103;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:467:"这条命令显示任何在你当前分支上而不在远程origin 上的提交。如果你运行 git push 并且的你的当前分支正在跟踪 origin/master，被git log origin/master..HEAD 列出的提交就是将被传输到服务器上的提交。 你也可以留空语法中的一边来让 Git 来假定它是 HEAD。例如，输入 git log origin/master.. 将得到和上面的例子一样的结果—— Git 使用 HEAD 来代替不存在的一边。
多点";}i:2;i:8584;}i:104;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:9051;}i:105;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:9051;}i:106;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:253:"双点语法就像速记一样有用；但是你也许会想针对两个以上的分支来指明修订版本，比如查看哪些提交被包含在某些分支中的一个，但是不在你当前的分支上。Git允许你在引用前使用^字符或者";}i:2;i:9053;}i:107;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:9306;}i:108;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:93:"not指明你不希望提交被包含其中的分支。因此下面三个命令是等同的：";}i:2;i:9308;}i:109;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:9407;}i:110;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:69:"
$ git log refA..refB
$ git log ^refA refB
$ git log refB --not refA
";i:1;N;i:2;N;}i:2;i:9407;}i:111;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:9407;}i:112;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:237:"这样很好，因为它允许你在查询中指定多于两个的引用，而这是双点语法所做不到的。例如，如果你想查找所有从refA或refB包含的但是不被refC包含的提交，你可以输入下面中的一个";}i:2;i:9485;}i:113;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:9728;}i:114;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:58:"
$ git log refA refB ^refC
$ git log refA refB --not refC
";i:1;N;i:2;N;}i:2;i:9728;}i:115;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:9728;}i:116;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:133:"这建立了一个非常强大的修订版本查询系统，应该可以帮助你解决分支里包含了什么这个问题。
三点";}i:2;i:9795;}i:117;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:9928;}i:118;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:9928;}i:119;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:314:"最后一种主要的范围选择语法是三点语法，这个可以指定被两个引用中的一个包含但又不被两者同时包含的分支。回过头来看一下图6-1里所列的提交历史的例子。 如果你想查看master或者experiment中包含的但不是两者共有的引用，你可以运行";}i:2;i:9930;}i:120;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:10250;}i:121;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:39:"
$ git log master...experiment
F
E
D
C
";i:1;N;i:2;N;}i:2;i:10250;}i:122;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:10250;}i:123;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:117:"这个再次给出你普通的log输出但是只显示那四次提交的信息，按照传统的提交日期排列。";}i:2;i:10298;}i:124;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:10415;}i:125;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:10415;}i:126;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:51:"这种情形下，log命令的一个常用参数是";}i:2;i:10417;}i:127;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:10468;}i:128;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:100:"left-right，它会显示每个提交到底处于哪一侧的分支。这使得数据更加有用。";}i:2;i:10470;}i:129;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:10576;}i:130;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:60:"
$ git log --left-right master...experiment
< F
< E
> D
> C
";i:1;N;i:2;N;}i:2;i:10576;}i:131;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:10576;}i:132;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:78:"有了以上工具，让Git知道你要察看哪些提交就容易得多了。";}i:2;i:10645;}i:133;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:10723;}i:134;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:10723;}i:135;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:10723;}}