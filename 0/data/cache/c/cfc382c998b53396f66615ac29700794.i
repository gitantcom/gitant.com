a:92:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:33:"输出最后一次提交的改变";i:1;i:3;i:2;i:2;}i:2;i:2;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:2;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:169:"这个命令，我经常使用它 来发送其他没有使用git的人来检查或者集成所修改的。它会输出最近提交的修改类容到一个zip文件中。";}i:2;i:47;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:216;}i:6;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:67:"
	git archive -o ../updated.zip HEAD $(git diff --name-only HEAD^)
";i:1;s:4:"bash";i:2;N;}i:2;i:223;}i:7;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:307;}i:8;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:30:"输出两个提交间的改变";i:1;i:3;i:2;i:307;}i:2;i:307;}i:9;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:307;}i:10;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:307;}i:11;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:90:"类似的，如果你需要输出某两个提交间的改变时，你可以使用这个。";}i:2;i:349;}i:12;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:445;}i:13;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:111:"
	git archive -o ../latest.zip NEW_COMMIT_ID_HERE $(git diff--name-only OLD_COMMIT_ID_HERE NEW_COMMIT_ID_HERE)
";i:1;s:4:"bash";i:2;N;}i:2;i:445;}i:14;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:445;}i:15;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:31:"3. 克隆 指定的远程分支";}i:2;i:571;}i:16;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:602;}i:17;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:602;}i:18;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:187:"如果你渴望只克隆远程仓库的一个指定分支，而不是整个仓库分支，这对你帮助很大。
1 	git init
2 	git remote add -t BRANCH_NAME_HERE -f origin REMOTE_REPO_";}i:2;i:604;}i:19;a:3:{i:0;s:7:"acronym";i:1;a:1:{i:0;s:3:"URL";}i:2;i:791;}i:20;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:93:"_PATH_HERE
3 	git checkout BRANCH_NAME_HERE
4. 应用 从不相关的本地仓库来的补丁";}i:2;i:794;}i:21;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:887;}i:22;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:887;}i:23;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:128:"如果你需要其它一些不相关的本地仓库作为你现在仓库的补丁，这里就是通往那里的捷径。
1 	git ";}i:2;i:889;}i:24;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:1017;}i:25;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:62:"git-dir=PATH_TO_OTHER_REPOSITORY_HERE/.git format-patch -k -1 ";}i:2;i:1019;}i:26;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:1081;}i:27;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:105:"stdout COMMIT_HASH_ID_HERE| git am -3 -k
5. 检测 你的分支的改变是否为其它分支的一部分";}i:2;i:1083;}i:28;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1188;}i:29;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1188;}i:30;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:419:"cherry命令让我们检测你的分支的改变是否出现在其它一些分支中。它通过+或者-符号来显示从当前分支与所给的分支之间的改变：是否合并了(merged)。.+ 指示没有出现在所给分支中，反之，- 就表示出现在了所给的分支中了。这里就是如何去检测：
1 	git cherry -v OTHER_BRANCH_NAME_HERE
2 	#例如: 检测master分支
3 	git cherry -v master";}i:2;i:1190;}i:31;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1609;}i:32;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:5:"Lesus";}i:2;i:1609;}i:33;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1609;}i:34;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:29:"Lesus
翻译于 昨天(11:42)";}i:2;i:1617;}i:35;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1646;}i:36;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1646;}i:37;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:"1人顶";}i:2;i:1648;}i:38;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1655;}i:39;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1655;}i:40;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:59:"顶 翻译的不错哦!
6.开始一个无历史的新分支";}i:2;i:1657;}i:41;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1716;}i:42;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1716;}i:43;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:227:"有时，你需要开始一个新分支，但是又不想把很长很长的历史记录带进来，例如，你想在公众区域（开源）放置你的代码，但是又不想别人知道它的历史记录。
1 	git checkout ";}i:2;i:1718;}i:44;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:1945;}i:45;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:78:"orphan NEW_BRANCH_NAME_HERE
7. 无切换分支的从其它分支Checkout文件";}i:2;i:1947;}i:46;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2025;}i:47;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2025;}i:48;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:112:"不想切换分支，但是又想从其它分支中获得你需要的文件：
1 	git checkout BRANCH_NAME_HERE ";}i:2;i:2027;}i:49;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:2139;}i:50;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:28:" PATH_TO_FILE_IN_BRANCH_HERE";}i:2;i:2141;}i:51;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2169;}i:52;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:5:"Lesus";}i:2;i:2169;}i:53;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2169;}i:54;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:29:"Lesus
翻译于 昨天(12:13)";}i:2;i:2177;}i:55;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2206;}i:56;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2206;}i:57;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:"1人顶";}i:2;i:2208;}i:58;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2215;}i:59;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2215;}i:60;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:56:"顶 翻译的不错哦!
8.忽略已追踪文件的变动";}i:2;i:2217;}i:61;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2273;}i:62;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2273;}i:63;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:410:"如果您正在一个团队中工作，而且大家都在同一条branch上面工作，那么您很有可能会经常用到fetch和merge。但是有时候这样会重置您的环境配置文件，如此的话，您就得在每次merge后修改它。使用这一命令，您就能要求git忽视指定文件的变动。这样，下回你再merge的话，这个文件就不会被修改了。
1 	git update-index ";}i:2;i:2275;}i:64;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:2685;}i:65;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:86:"assume-unchanged PATH_TO_FILE_HERE
9.检查提交的变动是否是release的一部分";}i:2;i:2687;}i:66;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2773;}i:67;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2773;}i:68;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:189:"name-rev命令能告诉您一个commit相对于最近一次release的位置。使用这条命令，您就可以检查您所做出的改动是否是release的一部分了。
1 	git name-rev ";}i:2;i:2775;}i:69;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:2964;}i:70;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:26:"name-only COMMIT_HASH_HERE";}i:2;i:2966;}i:71;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2992;}i:72;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:9:"stoneyang";}i:2;i:2992;}i:73;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2992;}i:74;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:33:"stoneyang
翻译于 昨天(16:26)";}i:2;i:3004;}i:75;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3037;}i:76;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3037;}i:77;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:"1人顶";}i:2;i:3039;}i:78;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3046;}i:79;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3046;}i:80;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:56:"顶 翻译的不错哦!
10.使用rebase推送而非merge";}i:2;i:3048;}i:81;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3104;}i:82;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3104;}i:83;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:525:"如果您正在团队中工作并且整个团队都在同一条branch上面工作，那么您就得经常地进行fetch/merge或者pull。Git中，分支的合并以所提交的merge来记录，以此表明一条feature分支何时与主分支合并。但是在多团队成员共同工作于一条branch的情形中，常规的merge会导致log中出现多条消息，从而产生混淆。因此，您可以在pull的时候使用rebase，以此来减少无用的merge消息，从而保持历史记录的清晰。
1 	git pull ";}i:2;i:3106;}i:84;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:3631;}i:85;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:6:"rebase";}i:2;i:3633;}i:86;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3639;}i:87;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3639;}i:88;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:113:"您也可以将某条branch配置为总是使用rebase推送：
1 	git config branch.BRANCH_NAME_HERE.rebase true";}i:2;i:3641;}i:89;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3754;}i:90;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:3754;}i:91;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:3754;}}