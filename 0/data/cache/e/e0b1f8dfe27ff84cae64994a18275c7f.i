a:33:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:27:"向远端仓库提交代码";i:1;i:3;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:1;}i:3;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:92:"
$ git push <remote> <branch> # push new commits to the <branch> on the <remote> repository
";i:1;N;i:2;N;}i:2;i:42;}i:4;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:144;}i:5;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:8:"Git Push";i:1;i:3;i:2;i:144;}i:2;i:144;}i:6;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:144;}i:7;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:162;}i:8;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:162;}i:9;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:162;}i:10;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:51:" 如何修改远端git仓库 remote 的url地址？";}i:2;i:166;}i:11;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:217;}i:12;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:217;}i:13;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:217;}i:14;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:33:"
$ git remote set-url remote URL
";i:1;s:4:"bash";i:2;N;}i:2;i:224;}i:15;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:272;}i:16;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:61:"如何推送本地新分支new-branch 到远端 origin 仓库";i:1;i:3;i:2;i:272;}i:2;i:272;}i:17;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:272;}i:18;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:35:"
 $ git push -u origin new-branch 
";i:1;s:4:"bash";i:2;N;}i:2;i:348;}i:19;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:399;}i:20;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:42:"如何修改远端git仓库的分支名称";i:1;i:3;i:2;i:399;}i:2;i:399;}i:21;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:399;}i:22;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:55:"
  $ git push -u origin new  
  $ git push origin :old
";i:1;s:4:"bash";i:2;N;}i:2;i:459;}i:23;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:530;}i:24;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:39:"推送所有标签tag到远端仓库？";i:1;i:3;i:2;i:530;}i:2;i:530;}i:25;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:530;}i:26;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:37:"<code bash>
$ git push --tags
</code>";}i:2;i:578;}i:27;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:624;}i:28;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:18:"删除远端分支";i:1;i:3;i:2;i:624;}i:2;i:624;}i:29;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:624;}i:30;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:130:"
$git ls-remote origin #//查看远端分支是否存在
$git push origin --delete branch_name  #//删除远端分支 branch_name
";i:1;s:4:"bash";i:2;N;}i:2;i:656;}i:31;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:799;}i:32;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:799;}}