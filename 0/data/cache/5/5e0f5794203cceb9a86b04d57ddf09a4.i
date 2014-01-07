a:22:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:27:"如何合并两个仓库？";i:1;i:3;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:140:"Use git-subtree to import a branch of another repository into your main repository without losing its history. For example:
git subtree add ";}i:2;i:37;}i:5;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:177;}i:6;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:17:"prefix=rails git:";}i:2;i:179;}i:7;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:196;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:130:"github.com/rails/rails.git master


This will import the other repository's master branch into a rails subdirectory (specified by ";}i:2;i:198;}i:9;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:328;}i:10;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:800:"prefix) in your main repository and you can see all of its commits in git-log afterward.

Submodules

Either copy repository A into separate directory in larger project B, or (perhaps better) clone repository A into subdirectory in project B. Then use git submodule to make this repository a submodule of a repository B.

This is a good solution for loosely-coupled repositories, where development in repository A continues, and major portion of development is separate stand-alone development in A. See also SubmoduleSupport and GitSubmoduleTutorial pages on Git Wiki.

Subtree merge

You can merge repository A into a subdirectory of a project B using the subtree merge strategy. This is described in Subtree Merging and You by Markus Prinz.
git remote add -f Bproject /path/to/B
git merge -s ours ";}i:2;i:330;}i:11;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:1130;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:40:"no-commit Bproject/master
git read-tree ";}i:2;i:1132;}i:13;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:1172;}i:14;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:47:"prefix=dir-B/ -u Bproject/master
git commit -m ";}i:2;i:1174;}i:15;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:1221;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:35:"Merge B project as our subdirectory";}i:2;i:1222;}i:17;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:1257;}i:18;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:212:"
git pull -s subtree Bproject master


Or you can use git subtree tool (repository on github) by apenwarr (Avery Pennarun), announced for example in his blog post A new alternative to git submodules: git subtree.";}i:2;i:1258;}i:19;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1258;}i:20;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1258;}i:21;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1258;}}