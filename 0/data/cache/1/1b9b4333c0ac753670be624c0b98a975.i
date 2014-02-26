a:56:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:12:"Git的发展";i:1;i:3;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:23;}i:5;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:"1972年";}i:2;i:25;}i:6;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:32;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:271:" 的时候，贝尔实验室写出了史上第一个版本控制系统（Version Control System A.K.A. VCS)，取了个直白的名字叫 Source Code Control System，简称 SCCS。这个软件用 C 语言改写后，被收录在 AT&T 的系统中。只有 Unix 版本。";}i:2;i:34;}i:8;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:305;}i:9;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:305;}i:10;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:442:"SCCS储存要监控的源文件，当文件被修改时，它自动地为每次修改创建一个快照（Snapshot）。你工作的时候，想切换到哪个版本，它就先取出源文件，再依次应用修改直到你要的那个版本为止。但当你对文件作出多次、大量修改后，它的速度明显变慢了，它要从原文件开始依次应用修改。而且，它内置在 AT&T 生产的系统中，不能跨平台.";}i:2;i:308;}i:11;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:750;}i:12;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:750;}i:13;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:753;}i:14;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:"1982年";}i:2;i:755;}i:15;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:762;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:163:",Water (Water.F.Tichy) 美国普渡大学计算机老师，写出第二个被广泛应用的 VCS，取名 Revision Control System，也就是大家熟知的 RCS。";}i:2;i:764;}i:17;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:927;}i:18;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:927;}i:19;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:200:"它相比于 SCCS 更快。它储存最近的文件作为源文件，对历史修改反向，并且创建快照（Snapshot）。但是它每次都只能监控单个文件，整个项目监控苦难。";}i:2;i:929;}i:20;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1129;}i:21;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1129;}i:22;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:1131;}i:23;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:"1986年";}i:2;i:1133;}i:24;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:1140;}i:25;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:294:"，新的 VCS 诞生了——Concurrent Versions System（A.K.A. CVS）。它支持了对整个项目进行监控，并且首次提出了仓库（Repository）的概念，，它明确地分成了服务端和客户端，把代码仓库放在服务器上，由客户端向服务端提交修改。";}i:2;i:1142;}i:26;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1436;}i:27;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1436;}i:28;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:277:"CVS 很好地支持了多用户多文件并行操作。它的问题是监控的对象是文件，而不是目录。如果在项目目录下再创建目录，这个子目录里面的文件并不会被监控；同理，添加一个新文件，这个新文件也不会被监控。";}i:2;i:1438;}i:29;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1715;}i:30;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1715;}i:31;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:1718;}i:32;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:"2000年";}i:2;i:1720;}i:33;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:1727;}i:34;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:458:"，一个跨时代的 VCS 出现了—— Subversion（A.K.A. SVN）。它由 CollabNet 公司开发，并且在后来被纳入了 Apache 软件项目孵化器（Apache Incubator），成为其中 top-level 的产品。它不但支持监控整个目录，而且首次支持了监控非文本文件。这两个特性使它在 2001 年在全球范围内取代了 CVS，并且一直流行到今天。现在许多软件公司用的版本控制系统还是 SVN。";}i:2;i:1729;}i:35;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2187;}i:36;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2187;}i:37;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:708:"这就不得不提到同时代的另一款 CVS —— BitKeeper。与 SVN 不同，它是一款商业软件，但提供了免费的社区版本（Community Version）。它最大的优点在于，分布式管理。在 SVN 中，服务端相当于代码中心，所有的代码都提交到这里。它两点不方便的地方在于，客户端要不断地和服务端进行交互以保证自己的代码是最新的，如果自己从一个比较旧的版本开始修改，就会出现问题。而且与服务端的交互要求网络连接，不适合离线工作。分布式管理的概念是每个仓库都是主仓库，当两个仓库版本不一致时，可以方便地查看冲突之处并加以修改。";}i:2;i:2191;}i:38;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2899;}i:39;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2899;}i:40;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:121:"使得 BitKeeper 如此出名的原因还在于，大名鼎鼎的 Linux Kernel 就存放在其免费的社区版本上。";}i:2;i:2901;}i:41;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3022;}i:42;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3022;}i:43;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:3024;}i:44;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:"2005年";}i:2;i:3026;}i:45;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:3033;}i:46;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:187:"4月，BitMover（拥有 BitKeeper 的那家公司）突然宣布，停止 BitKeeper 的社区版本，Linux 之父 Linus 编写了Git！并把作为 Linux kernel 的版本控制工具。";}i:2;i:3035;}i:47;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3222;}i:48;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3222;}i:49;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:3225;}i:50;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:"2008年";}i:2;i:3227;}i:51;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:3234;}i:52;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:101:"，社交编程网站 github.com发布，极大推广了git的使用，随机git开始全球普及。";}i:2;i:3236;}i:53;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3337;}i:54;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:3337;}i:55;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:3337;}}