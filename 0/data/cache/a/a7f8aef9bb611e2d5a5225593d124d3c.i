a:237:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:0;}i:2;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:12:"Git flow 0.4";}i:2;i:4;}i:3;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:16;}i:4;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:16;}i:5;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:29:"用法:
git flow <subcommand>";}i:2;i:18;}i:6;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:47;}i:7;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:47;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:26:"Available subcommands are:";}i:2;i:49;}i:9;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:75;}i:10;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:75;}i:11;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:253:"init Initialize a new git repo with support for the branching model.
feature Manage your feature branches.
release Manage your release branches.
hotfix Manage your hotfix branches.
support Manage your support branches.
version Shows version information.";}i:2;i:77;}i:12;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:330;}i:13;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:330;}i:14;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:36:"Git flow的分支类型
长期分支";}i:2;i:332;}i:15;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:368;}i:16;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:368;}i:17;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:79:"master
用途: 稳定版本的分支,产品发布的分支
位置: remote,local";}i:2;i:370;}i:18;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:449;}i:19;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:449;}i:20;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:49:"develop
用途: 开发版本
位置: remote,local";}i:2;i:451;}i:21;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:500;}i:22;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:500;}i:23;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:12:"短期分支";}i:2;i:502;}i:24;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:514;}i:25;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:514;}i:26;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:216:"feature
用途: 特性/功能开发
位置: local,remote*(可以通过feature publish发布到remote上,供团队协作)
分支建立: 从develop分支建立,可以指定起始点
分支合并: 合并回develop分支";}i:2;i:516;}i:27;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:732;}i:28;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:732;}i:29;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:233:"release
用途: 版本发布的准备分支
位置: local,remote*(可以通过release publish发布到remote上,供团队协作)
分支建立: 从develop分支建立,可以指定起始点
分支合并: 合并回develop和master分支";}i:2;i:734;}i:30;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:967;}i:31;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:967;}i:32;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:119:"hotfix
用途: 紧急Bug修复
位置:local
分支建立: 从master建立分支
分支合并: 合并回master和develop";}i:2;i:969;}i:33;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1088;}i:34;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1088;}i:35;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:17:"子命令
feature";}i:2;i:1090;}i:36;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1107;}i:37;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1107;}i:38;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:36:"用法:
git flow feature [list] [-v]";}i:2;i:1109;}i:39;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1145;}i:40;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1145;}i:41;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:331:"git flow feature start [-F] <name> [<base>]
git flow feature finish [-rFk] <name|nameprefix>
git flow feature publish <name>
git flow feature track <name>
git flow feature diff [<name|nameprefix>]
git flow feature rebase [-i] [<name|nameprefix>]
git flow feature checkout [<name|nameprefix>]
git flow feature pull <remote> [<name>]";}i:2;i:1147;}i:42;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1478;}i:43;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1478;}i:44;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:13:"feature start";}i:2;i:1481;}i:45;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1494;}i:46;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1494;}i:47;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:338:"用法: git flow feature start [-F] <name> [<base>]
功能: 以指定的commit名称(由base参数指定)创建一个feature分支
参数: -F 
'fetch from origin before performing local operation' (建立分支前先从origin下载数据) 默认为false 
该参数在0.4版本有bug,不可用,可以使用 git fetch -q orgin develop代替";}i:2;i:1496;}i:48;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1834;}i:49;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1834;}i:50;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:59:"name 
feature的名称,对应的分支名称为feature/name";}i:2;i:1836;}i:51;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1895;}i:52;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1895;}i:53;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:56:"base 
建立feature的start point,默认为develop分支";}i:2;i:1897;}i:54;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1953;}i:55;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1953;}i:56;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:52:"等价的Git 命令:
1. git fetch -q origin develop ";}i:2;i:1955;}i:57;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:2007;}i:58;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:308:"当 -F 设置的时候执行,只是更新.git中的remote内容,不做merge操作
2. 检查本地的develop分支和远程的develop分支是否一致,即refs/develop 和 refs/remote/origin/develop(建议先执行git pull origin develop或者git fetch origin develop)
3. git checkout -b feature/name develop ";}i:2;i:2009;}i:59;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:2317;}i:60;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:12:"建立分支";}i:2;i:2319;}i:61;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2331;}i:62;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2331;}i:63;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:38:"例子:
git flow feature start story_1";}i:2;i:2333;}i:64;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2371;}i:65;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2371;}i:66;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:15:"feature publish";}i:2;i:2374;}i:67;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2389;}i:68;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2389;}i:69;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:219:"用法: git flow feature publish <name>
功能: 将一个本地的feature分支push到远程的仓库中,该命令可用于与团队其他成员合作开发或者备份自己的代码
参数: name
本地feature的名称";}i:2;i:2391;}i:70;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2610;}i:71;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2610;}i:72;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:109:"等价的Git命令:
1. 检查本地的工作目录及分支
2. git fetch -q origin
3. git push origin feature";}i:2;i:2612;}i:73;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:2721;}i:74;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:6:"/name:";}i:2;i:2723;}i:75;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:2729;}i:76;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:18:"refs/heads/feature";}i:2;i:2731;}i:77;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:2749;}i:78;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:5:"/name";}i:2;i:2751;}i:79;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:2756;}i:80;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:88:"
4. git fetch -q origin
5. git checkout feature/name 例子:
git feature publish story_1";}i:2;i:2758;}i:81;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2846;}i:82;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2846;}i:83;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:13:"feature track";}i:2;i:2848;}i:84;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2861;}i:85;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2861;}i:86;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:208:"用法: git flow feature track <name>
功能: 将由feature publish发布的feature分支从远程仓库下载到本地,并建立同名分支
参数: name
远程feature的名称,对应feature publish的名称";}i:2;i:2863;}i:87;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3071;}i:88;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3071;}i:89;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:56:"等价的Git命令:
1. 检查本地的工作目录是否";}i:2;i:3073;}i:90;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:3129;}i:91;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:6:"干净";}i:2;i:3130;}i:92;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:3136;}i:93;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:178:";检查分支是否已经存在,如果已经存在,则报错退出
2. git fetch -q origin 
3. git checkout -b name origin/feature/name 例子:
git feature track name
feature pull";}i:2;i:3137;}i:94;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3315;}i:95;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3315;}i:96;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:278:"用法: git flow feature pull <remote> [<name>]
功能: 将由feature publish发布的feature分支从远程仓库下载到本地,并建立同名分支;如果本地已经有同名分支,则对其执行pull操作
参数: name
远程feature的名称,对应feature publish的名称";}i:2;i:3317;}i:97;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3595;}i:98;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3595;}i:99;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:86:"等价的Git命令:
a. 如果本地已有name分支
1. git pull -q origin feature/name";}i:2;i:3597;}i:100;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3683;}i:101;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3683;}i:102;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:82:"b. 如果本地没有name分支
1. git fetch -q origin feature/name
2. git branch ";}i:2;i:3685;}i:103;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:3767;}i:104;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:98:"no-track feature/name
3. git checkout -q feature/name 例子:
git flow feature pull origin story_1";}i:2;i:3769;}i:105;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3867;}i:106;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3867;}i:107;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:14:"feature finish";}i:2;i:3869;}i:108;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3883;}i:109;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3883;}i:110;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:253:"用法: git flow feature finish [-rFk] <name|nameprefix>
功能: 完成由name指定的feature分支的开发,将其合并到本地的develop分支,合并成功后删除该分支
参数: -r 
在合并到develop分子时,使用rebase机制,而不是merge";}i:2;i:3885;}i:111;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4138;}i:112;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4138;}i:113;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:70:"-F
在执行finish操作前,先执行fetch,从远程仓库下载更新";}i:2;i:4140;}i:114;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4210;}i:115;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4210;}i:116;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:59:"-k
执行完finsh后,保留feature分支,即不删除分支";}i:2;i:4212;}i:117;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4271;}i:118;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4271;}i:119;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:50:"name
feature的名称,对应feature start的名称";}i:2;i:4273;}i:120;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4323;}i:121;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4323;}i:122;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:285:"等价的Git命令:
1. git fetch -q origin feature/name #当参数中设置了-F时
2. git flow feature rebase name develop #当参数中设置了-r时
3. git checkout develop
4. git merge feature/name #根据develop分支和feature/name分支之间的提交的个数决定是否设置";}i:2;i:4325;}i:123;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:4610;}i:124;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:2:"no";}i:2;i:4612;}i:125;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:4614;}i:126;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:152:"ff
5. #如果设置了-F参数,则删除远程的分支 git push origin :ref/heads/feature/name 
6. #如果没有设置-k参数,则删除本地的分支";}i:2;i:4616;}i:127;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4768;}i:128;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4768;}i:129;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:39:"例子:
git flow feature finish story_1";}i:2;i:4770;}i:130;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4809;}i:131;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4809;}i:132;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:14:"feature rebase";}i:2;i:4812;}i:133;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4826;}i:134;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4826;}i:135;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:170:"用法: git flow feature rebase [-i] [<name|nameprefix>]
功能: 以develop分支作为upstream,对指定的feature分支执行rebase操作
参数: -i 
等价与rebase -i";}i:2;i:4828;}i:136;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4998;}i:137;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4998;}i:138;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:21:"name
feature的名称";}i:2;i:5000;}i:139;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5021;}i:140;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5021;}i:141;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:73:"等价的Git命令:
1. git checkout -q feature/name
2. git rebase develop";}i:2;i:5023;}i:142;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5096;}i:143;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5096;}i:144;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:42:"例子:
git flow feature rebase -i story_1";}i:2;i:5098;}i:145;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5140;}i:146;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5140;}i:147;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:"release";}i:2;i:5142;}i:148;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5149;}i:149;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5149;}i:150;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:180:"用法:
git flow release [list] [-v]
git flow release start [-F] <version>
git flow release finish [-Fsumpk] <version>
git flow release publish <name>
git flow release track <name>";}i:2;i:5151;}i:151;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5331;}i:152;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5331;}i:153;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:13:"release start";}i:2;i:5333;}i:154;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5346;}i:155;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5346;}i:156;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:172:"用法: git flow release start [-F] <version> [<base>]
功能: 从develop分支指定的起始点(可选,默认为HEAD)建立版本发布的分支
参数: version
版本号";}i:2;i:5348;}i:157;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5520;}i:158;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5520;}i:159;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:64:"base
建立分支的起始点,可选参数,默认为develop HEAD";}i:2;i:5522;}i:160;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5586;}i:161;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5586;}i:162;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:62:"等价的Git命令:
1. git checkout -b release/version develop";}i:2;i:5588;}i:163;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5650;}i:164;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5650;}i:165;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:35:"例子:
git flow release start v0.1";}i:2;i:5652;}i:166;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5687;}i:167;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5687;}i:168;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:15:"release publish";}i:2;i:5689;}i:169;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5704;}i:170;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5704;}i:171;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:160:"用法: git flow release publish <name>
功能: 将release分支发布的远程仓库,供团队协作
参数: name
release名称,与start 中的version相对应";}i:2;i:5706;}i:172;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5866;}i:173;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5866;}i:174;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:136:"等价的Git命令:
1. git fetch -q origin
2. git push origin release/name:refs/heads/release/name 例子:
git flow release publish v0.1";}i:2;i:5868;}i:175;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6004;}i:176;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6004;}i:177;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:13:"release track";}i:2;i:6006;}i:178;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6019;}i:179;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6019;}i:180;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:217:"用法: git flow release track <name>
功能: 将由 publish发布的feature分支从远程仓库下载到本地,并建立同名分支,供团队协作
参数: name
远程feature的名称,对应feature publish的名称";}i:2;i:6021;}i:181;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6238;}i:182;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6238;}i:183;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:130:"等价的Git命令:
1. git fetch -q origin
2. git checkout -b release/name origin/release/name 例子:
git flow release track v0.1";}i:2;i:6240;}i:184;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6370;}i:185;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6370;}i:186;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:14:"release finish";}i:2;i:6373;}i:187;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6387;}i:188;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6387;}i:189;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:218:"用法: git flow release finish [-Fsumpk] <version>
功能: 完成由version指定的release分支的开发,将其合并到develop和master分支,并为该分支创建一个tag
参数: -F 
执行操作前先执行fetch";}i:2;i:6389;}i:190;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6607;}i:191;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6607;}i:192;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:24:"-s
对新建的tag签名";}i:2;i:6609;}i:193;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6633;}i:194;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6633;}i:195;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:25:"-u
签名使用的GPG-key";}i:2;i:6635;}i:196;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6660;}i:197;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6660;}i:198;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:42:"-m
使用指定的注释作为tag的注释";}i:2;i:6662;}i:199;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6704;}i:200;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6704;}i:201;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:44:"-p
当操作结束后,push到远程仓库中";}i:2;i:6706;}i:202;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6750;}i:203;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6750;}i:204;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:15:"-k
保留分支";}i:2;i:6752;}i:205;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6767;}i:206;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6767;}i:207;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:15:"-n
不创建tag";}i:2;i:6769;}i:208;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6784;}i:209;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6784;}i:210;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:17:"version
版本号";}i:2;i:6786;}i:211;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6803;}i:212;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6803;}i:213;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:124:"等价的Git命令:
1. 如果设置了 -F 参数,下载更新
1.1 git fetch -q origin master
1.2 git fetch -q origin develop";}i:2;i:6805;}i:214;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6929;}i:215;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6929;}i:216;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:63:"2. 合并回master分支
2.1 git checkout master
2.2 git merge ";}i:2;i:6931;}i:217;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:6994;}i:218;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:21:"no-ff release/version";}i:2;i:6996;}i:219;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:7017;}i:220;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:7017;}i:221;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:54:"3. 如果没有设置 -n 参数,创建tag
3.1 git tag ";}i:2;i:7019;}i:222;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:7073;}i:223;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:7073;}i:224;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:65:"4. 合并回develop分支
4.1 git checkout develop
4.2 git merge ";}i:2;i:7075;}i:225;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:7140;}i:226;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:21:"no-ff release/version";}i:2;i:7142;}i:227;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:7163;}i:228;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:7163;}i:229;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:65:"5. 如果没有设置 -k 参数
5.1 git branch -d release/version";}i:2;i:7165;}i:230;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:7230;}i:231;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:7230;}i:232;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:94:"6. 如果设置 -p 参数
6.1 git push origin develop
6.2 git push origin master
6.3 git push ";}i:2;i:7232;}i:233;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:7326;}i:234;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:126:"tags origin
6.4 git push orign :release/version #删除远程仓库中的release分支 例子:
git flow release finish -p v0.1";}i:2;i:7328;}i:235;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:7328;}i:236;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:7328;}}