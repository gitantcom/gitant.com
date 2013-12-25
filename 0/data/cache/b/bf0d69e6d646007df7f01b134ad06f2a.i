a:143:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:41:"使用git subtree集成项目到子目录";i:1;i:2;i:2;i:2;}i:2;i:2;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:2;}i:3;a:3:{i:0;s:2:"hr";i:1;a:0:{}i:2;i:55;}i:4;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:55;}i:5;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:12:"使用场景";}i:2;i:62;}i:6;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:74;}i:7;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:74;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:228:"例如，在项目Game中有一个子目录AI。Game和AI分别是一个独立的git项目，可以分开维护。为了避免直接复制粘贴代码，我们希望Game中的AI子目录与AI的git项目关联，有3层意思：";}i:2;i:76;}i:9;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:304;}i:10;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:304;}i:11;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:67:"1. AI子目录使用AI的git项目来填充，内容保持一致。";}i:2;i:306;}i:12;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:373;}i:13;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:373;}i:14;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:89:"2. 当AI的git项目代码有更新，可以拉取更新到Game项目的AI子目录来。";}i:2;i:375;}i:15;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:464;}i:16;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:464;}i:17;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:101:"3. 反过来，当Game项目的AI子目录有变更，还可以推送这些变更到AI的git项目。";}i:2;i:466;}i:18;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:567;}i:19;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:567;}i:20;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:70:"用git subtree可以轻松满足上面的需求。
对比git submodule";}i:2;i:569;}i:21;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:639;}i:22;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:639;}i:23;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:275:"如果你没有用过git submodule，你甚至可以不用了解git submodule是什么，submodule的基本介绍也不在本文的说明范围内。虽然它满足了上述差不多的需求，但是复杂难用，以至于需要这么长一篇教程才能说清楚用法。";}i:2;i:641;}i:24;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:916;}i:25;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:916;}i:26;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:260:"如果你的项目正在使用git submodule，你应该知道用submodule有多么麻烦，这里还有一篇文章专门解释git submodule的缺点，可以参考前面教程里的最后一段来删除submodule（是的，连删除步骤都非常麻烦）。";}i:2;i:918;}i:27;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1178;}i:28;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1178;}i:29;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:80:"使用git subtree之后，管理、更新都更加方便。
什么是git subtree";}i:2;i:1180;}i:30;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1260;}i:31;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1260;}i:32;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:222:"git subtree是一条git子命令，本质上subtree是一种合并策略，从git v1.5.2，官方就推荐使用subtree代替submodule，所以它并不需要保存.submodule这样的元信息。
git subtree的前提条件";}i:2;i:1262;}i:33;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1484;}i:34;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1484;}i:35;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:80:"subtree子命令很晚才集成到git中，请确保你的git版本（使用git ";}i:2;i:1486;}i:36;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:1566;}i:37;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:139:"version查看） > v1.8.0.0。有些文章中说v1.7.11就已经集成了，实际上没有，如果直接执行会看到这样的结果：";}i:2;i:1568;}i:38;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1707;}i:39;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1707;}i:40;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:61:"$git subtree  
git: 'subtree' is not a git command. See 'git ";}i:2;i:1709;}i:41;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:1770;}i:42;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:"help'.  ";}i:2;i:1772;}i:43;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1780;}i:44;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1780;}i:45;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:69:"如果你是在OS X下使用git，推荐用homebrew来安装新版本";}i:2;i:1782;}i:46;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1851;}i:47;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1851;}i:48;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:25:"$brew install git  
$git ";}i:2;i:1853;}i:49;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:1878;}i:50;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:31:"version  
git version 1.8.3.4  ";}i:2;i:1880;}i:51;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1911;}i:52;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1911;}i:53;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:17:"git subtree用法";}i:2;i:1913;}i:54;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1930;}i:55;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1930;}i:56;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:122:"针对第一段的3条需求，我分别说明具体的命令。
1. 第一次添加子目录，建立与git项目的关联";}i:2;i:1932;}i:57;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2054;}i:58;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2054;}i:59;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:34:"建立关联总共有2条命令。";}i:2;i:2056;}i:60;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2090;}i:61;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2090;}i:62;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:59:"语法：git remote add -f <子仓库名> <子仓库地址>";}i:2;i:2092;}i:63;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2151;}i:64;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2151;}i:65;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:76:"解释：其中-f意思是在添加远程仓库之后，立即执行fetch。";}i:2;i:2153;}i:66;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2229;}i:67;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2229;}i:68;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:25:"语法：git subtree add ";}i:2;i:2231;}i:69;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:2256;}i:70;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:46:"prefix=<子目录名> <子仓库名> <分支> ";}i:2;i:2258;}i:71;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:2304;}i:72;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:6:"squash";}i:2;i:2306;}i:73;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2312;}i:74;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2312;}i:75;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:9:"解释：";}i:2;i:2314;}i:76;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:2323;}i:77;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:112:"squash意思是把subtree的改动合并成一次commit，这样就不用拉取子项目完整的历史记录。";}i:2;i:2325;}i:78;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:2437;}i:79;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:43:"prefix之后的=等号也可以用空格。";}i:2;i:2439;}i:80;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2482;}i:81;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2482;}i:82;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:6:"示例";}i:2;i:2484;}i:83;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2490;}i:84;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2490;}i:85;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:22:"$git remote add -f ai ";}i:2;i:2492;}i:86;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:30:"https://github.com/aoxu/ai.git";i:1;N;}i:2;i:2514;}i:87;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:18:"
$git subtree add ";}i:2;i:2544;}i:88;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:2564;}i:89;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:20:"prefix=ai ai master ";}i:2;i:2566;}i:90;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:2586;}i:91;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:"squash  ";}i:2;i:2588;}i:92;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2596;}i:93;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2596;}i:94;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:33:"2. 从远程仓库更新子目录";}i:2;i:2598;}i:95;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2631;}i:96;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2631;}i:97;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:31:"更新子目录有2条命令。";}i:2;i:2633;}i:98;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2664;}i:99;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2664;}i:100;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:45:"语法：git fetch <远程仓库名> <分支>";}i:2;i:2666;}i:101;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2711;}i:102;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2711;}i:103;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:26:"语法：git subtree pull ";}i:2;i:2713;}i:104;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:2739;}i:105;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:46:"prefix=<子目录名> <远程分支> <分支> ";}i:2;i:2741;}i:106;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:2787;}i:107;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:6:"squash";}i:2;i:2789;}i:108;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2795;}i:109;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2795;}i:110;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:6:"示例";}i:2;i:2797;}i:111;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2803;}i:112;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2803;}i:113;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:41:"$git fetch ai master  
$git subtree pull ";}i:2;i:2805;}i:114;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:2846;}i:115;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:13:"prefix=ai ai ";}i:2;i:2848;}i:116;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:2861;}i:117;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:"squash  ";}i:2;i:2863;}i:118;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2871;}i:119;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2871;}i:120;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:61:"3. 从子目录push到远程仓库（确认你有写权限）";}i:2;i:2873;}i:121;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2934;}i:122;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2934;}i:123;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:40:"推送子目录的变更有1条命令。";}i:2;i:2936;}i:124;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2976;}i:125;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2976;}i:126;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:26:"语法：git subtree push ";}i:2;i:2978;}i:127;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:3004;}i:128;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:46:"prefix=<子目录名> <远程分支名> 分支";}i:2;i:3006;}i:129;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3052;}i:130;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3052;}i:131;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:6:"示例";}i:2;i:3054;}i:132;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3060;}i:133;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3060;}i:134;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:18:"$git subtree push ";}i:2;i:3062;}i:135;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:3080;}i:136;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:21:"prefix=ai ai master  ";}i:2;i:3082;}i:137;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3103;}i:138;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3103;}i:139;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:15:"参考资料：";}i:2;i:3105;}i:140;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3120;}i:141;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:3121;}i:142;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:3121;}}