a:40:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:71:"How do I reset/revert a specific file to a specific revision using Git?";i:1;i:3;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:32:"Assuming the commit you want is ";}i:2;i:83;}i:5;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:115;}i:6;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:5:"abcde";}i:2;i:116;}i:7;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:121;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:122;}i:9;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:128;}i:10;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:74:"
$ git checkout abcde file/to/restore  #恢复某个文件到指定版本
";i:1;s:4:"bash";i:2;N;}i:2;i:128;}i:11;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:218;}i:12;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:35:"git 检出某个旧版本的文件?";i:1;i:3;i:2;i:218;}i:2;i:218;}i:13;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:218;}i:14;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:263;}i:15;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:263;}i:16;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:263;}i:17;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:19:" 查看文件日志";}i:2;i:267;}i:18;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:286;}i:19;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:286;}i:20;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:286;}i:21;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:346:"
    $git log --pretty=format:"%h %ad | %s%d [%an]" --graph --date=short
    * fa3c141 2011-03-09 | Added HTML header (HEAD, master) [Marina Pushkova]
    * 8c32287 2011-03-09 | Added standard HTML page tags [Marina Pushkova]
    * 43628f7 2011-03-09 | Added h1 tag [Marina Pushkova]
    * 911e8c9 2011-03-09 | First Commit [Marina Pushkova]
    ";i:1;s:4:"bash";i:2;N;}i:2;i:296;}i:22;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:656;}i:23;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:656;}i:24;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:656;}i:25;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:29:" 检出某个hash值的文件";}i:2;i:661;}i:26;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:690;}i:27;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:690;}i:28;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:690;}i:29;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:533:"
    $ git checkout 911e8c9
    Note: checking out '911e8c9'.

    You are in 'detached HEAD' state. You can look around, make experimental
    changes and commit them, and you can discard any commits you make in this
    state without impacting any branches by performing another checkout.

    If you want to create a new branch to retain commits you create, you may
    do so (now or later) by using -b with the checkout command again. Example:

    git checkout -b new_branch_name

    HEAD is now at 911e8c9... First Commit
    ";i:1;s:4:"bash";i:2;N;}i:2;i:700;}i:30;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:1246;}i:31;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:1246;}i:32;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:1246;}i:33;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:25:" 回到master的最新版";}i:2;i:1252;}i:34;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:1277;}i:35;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:1277;}i:36;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:1277;}i:37;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:32:"
     $git checkout master
     ";i:1;s:4:"bash";i:2;N;}i:2;i:1287;}i:38;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1332;}i:39;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1332;}}