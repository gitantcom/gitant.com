a:210:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:20:"Centralized Workflow";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:38:":git_branch_model:git-workflow-svn.png";i:1;s:33:"Git Workflows: SVN-style Workflow";i:2;s:6:"center";i:3;N;i:4;N;i:5;s:5:"cache";i:6;s:7:"details";}i:2;i:35;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:113;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:113;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:245:"Transitioning to a distributed version control system may seem like a daunting task, but you don’t have to change your existing workflow to take advantage of Git. Your team can develop projects in the exact same way as they do with Subversion.";}i:2;i:115;}i:8;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:360;}i:9;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:360;}i:10;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:395:"However, using Git to power your development workflow presents a few advantages over SVN. First, it gives every developer their own local copy of the entire project. This isolated environment lets each developer work independently of all other changes to a project—they can add commits to their local repository and completely forget about upstream developments until it's convenient for them.";}i:2;i:362;}i:11;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:757;}i:12;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:757;}i:13;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:203:"Second, it gives you access to Git’s robust branching and merging model. Unlike SVN, Git branches are designed to be a fail-safe mechanism for integrating code and sharing changes between repositories.";}i:2;i:759;}i:14;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:963;}i:15;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:963;}i:16;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:12:"How It Works";i:1;i:2;i:2;i:963;}i:2;i:963;}i:17;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:963;}i:18;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:963;}i:19;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:318:"Like Subversion, the Centralized Workflow uses a central repository to serve as the single point-of-entry for all changes to the project. Instead of trunk, the default development branch is called master and all changes are committed into this branch. This workflow doesn’t require any other branches besides master.";}i:2;i:987;}i:20;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1305;}i:21;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1305;}i:22;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:354:"Developers start by cloning the central repository. In their own local copies of the project, they edit files and commit changes as they would with SVN; however, these new commits are stored locally—they’re completely isolated from the central repository. This lets developers defer synchronizing upstream until they’re at a convenient break point.";}i:2;i:1307;}i:23;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1661;}i:24;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1661;}i:25;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:253:"To publish changes to the official project, developers “push” their local master branch to the central repository. This is the equivalent of svn commit, except that it adds all of the local commits that aren’t already in the central master branch.";}i:2;i:1663;}i:26;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1916;}i:27;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1916;}i:28;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:49:":git_branch_model:git-workflow-svn-push-local.png";i:1;s:0:"";i:2;s:4:"left";i:3;N;i:4;N;i:5;s:5:"cache";i:6;s:7:"details";}i:2;i:1918;}i:29;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:1973;}i:30;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1974;}i:31;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1974;}i:32;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:18:"Managing Conflicts";i:1;i:3;i:2;i:1974;}i:2;i:1974;}i:33;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:1974;}i:34;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1974;}i:35;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:273:"The central repository represents the official project, so its commit history should be treated as sacred and immutable. If a developer’s local commits diverge from the central repository, Git will refuse to push his changes because this would overwrite official commits.";}i:2;i:2002;}i:36;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2275;}i:37;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2275;}i:38;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:304:"Before the developer can publish his feature, he needs to fetch the updated central commits and rebase his changes on top of them. This is like saying, “I want to add my changes to what everyone else has already done.” The result is a perfectly linear history, just like in traditional SVN workflows.";}i:2;i:2277;}i:39;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2581;}i:40;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2581;}i:41;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:483:"If local changes directly conflict with upstream commits, Git will pause the rebasing process and give you a chance to manually resolve the conflicts. The nice thing about Git is that it uses the same git status and git add commands for both generating commits and resolving merge conflicts. This makes it easy for new developers to manage their own merges. Plus, if they get themselves into trouble, Git makes it very easy to abort the entire rebase and try again (or go find help).";}i:2;i:2583;}i:42;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3066;}i:43;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:3070;}i:44;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:7:"Example";i:1;i:2;i:2;i:3070;}i:2;i:3070;}i:45;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:3070;}i:46;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3070;}i:47;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:236:"Let’s take a step-by-step look at how a typical small team would collaborate using this workflow. We’ll see how two developers, John and Mary, can work on separate features and share their contributions via a centralized repository.";}i:2;i:3091;}i:48;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3327;}i:49;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:3331;}i:50;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:42:"Someone initializes the central repository";i:1;i:3;i:2;i:3331;}i:2;i:3331;}i:51;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:3331;}i:52;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3331;}i:53;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:49:"Git Workflows: Initialize Central Bare Repository";}i:2;i:3385;}i:54;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3434;}i:55;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3434;}i:56;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:201:"First, someone needs to create the central repository on a server. If it’s a new project, you can initialize an empty repository. Otherwise, you’ll need to import an existing Git or SVN repository.";}i:2;i:3436;}i:57;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3637;}i:58;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3637;}i:59;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:133:"Central repositories should always be bare repositories (they shouldn’t have a working directory), which can be created as follows:";}i:2;i:3639;}i:60;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3772;}i:61;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3772;}i:62;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:23:"ssh user@host
git init ";}i:2;i:3774;}i:63;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:3797;}i:64;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:22:"bare /path/to/repo.git";}i:2;i:3799;}i:65;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3821;}i:66;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3821;}i:67;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:293:"Be sure to use a valid SSH username for user, the domain or IP address of your server for host, and the location where you'd like to store your repo for /path/to/repo.git. Note that the .git extension is conventionally appended to the repository name to indicate that it’s a bare repository.";}i:2;i:3823;}i:68;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4116;}i:69;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:4120;}i:70;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:39:"Everybody clones the central repository";i:1;i:3;i:2;i:4120;}i:2;i:4120;}i:71;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:4120;}i:72;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4120;}i:73;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:44:":git_branch_model:git-workflow-svn-clone.png";i:1;s:33:"Git Workflows: Clone Central Repo";i:2;s:6:"center";i:3;N;i:4;N;i:5;s:5:"cache";i:6;s:7:"details";}i:2;i:4171;}i:74;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4255;}i:75;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4255;}i:76;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:65:"Next, each developer creates a local copy of the entire project. ";}i:2;i:4257;}i:77;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4322;}i:78;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4322;}i:79;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:47:"This is accomplished via the git clone command:";}i:2;i:4324;}i:80;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4377;}i:81;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:46:"  
git clone ssh://user@host/path/to/repo.git
";i:1;N;i:2;N;}i:2;i:4377;}i:82;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4377;}i:83;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:209:"When you clone a repository, Git automatically adds a shortcut called origin that points back to the “parent” repository, under the assumption that you'll want to interact with it further on down the road.";}i:2;i:4435;}i:84;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4644;}i:85;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:4649;}i:86;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:25:"John works on his feature";i:1;i:3;i:2;i:4649;}i:2;i:4649;}i:87;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:4649;}i:88;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4649;}i:89;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:48:"Git Workflows: Edit Stage Commit Feature Process";}i:2;i:4686;}i:90;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4734;}i:91;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4734;}i:92;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:351:"In his local repository, John can develop features using the standard Git commit process: edit, stage, and commit. If you’re not familiar with the staging area, it’s a way to prepare a commit without having to include every change in the working directory. This lets you create highly focused commits, even if you’ve made a lot of local changes.";}i:2;i:4736;}i:93;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5087;}i:94;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5087;}i:95;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:89:"git status # View the state of the repo
git add # Stage a file
git commit # Commit a file";}i:2;i:5089;}i:96;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5178;}i:97;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5178;}i:98;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:284:"Remember that since these commands create local commits, John can repeat this process as many times as he wants without worrying about what’s going on in the central repository. This can be very useful for large features that need to be broken down into simpler, more atomic chunks.";}i:2;i:5180;}i:99;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5464;}i:100;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:5468;}i:101;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:25:"Mary works on her feature";i:1;i:3;i:2;i:5468;}i:2;i:5468;}i:102;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:5468;}i:103;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5468;}i:104;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:40:"Git Workflows: Edit Stage Commit Feature";}i:2;i:5505;}i:105;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5545;}i:106;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5545;}i:107;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:308:"Meanwhile, Mary is working on her own feature in her own local repository using the same edit/stage/commit process. Like John, she doesn’t care what’s going on in the central repository, and she really doesn’t care what John is doing in his local repository, since all local repositories are private.  ";}i:2;i:5547;}i:108;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5855;}i:109;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:5859;}i:110;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:26:"John publishes his feature";i:1;i:3;i:2;i:5859;}i:2;i:5859;}i:111;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:5859;}i:112;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5859;}i:113;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:30:"Git Workflows: Publish Feature";}i:2;i:5897;}i:114;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5927;}i:115;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5927;}i:116;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:181:"Once John finishes his feature, he should publish his local commits to the central repository so other team members can access it. He can do this with the git push command, like so:";}i:2;i:5929;}i:117;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6116;}i:118;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:24:"
git push origin master
";i:1;N;i:2;N;}i:2;i:6116;}i:119;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6116;}i:120;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:367:"Remember that origin is the remote connection to the central repository that Git created when John cloned it. The master argument tells Git to try to make the origin’s master branch look like his local master branch. Since the central repository hasn’t been updated since John cloned it, this won’t result in any conflicts and the push will work as expected.   ";}i:2;i:6149;}i:121;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6516;}i:122;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:6521;}i:123;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:33:"Mary tries to publish her feature";i:1;i:3;i:2;i:6521;}i:2;i:6521;}i:124;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:6521;}i:125;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6521;}i:126;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:6563;}i:127;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:40:":git_branch_model:git-workflow-svn-4.png";i:1;s:34:" Git Workflows: Push Command Error";i:2;s:6:"center";i:3;N;i:4;N;i:5;s:5:"cache";i:6;s:7:"details";}i:2;i:6564;}i:128;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6645;}i:129;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6645;}i:130;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:176:"Let’s see what happens if Mary tries to push her feature after John has successfully published his changes to the central repository. She can use the exact same push command:";}i:2;i:6647;}i:131;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6829;}i:132;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:24:"
git push origin master
";i:1;N;i:2;N;}i:2;i:6829;}i:133;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6829;}i:134;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:135:"But, since her local history has diverged from the central repository, Git will refuse the request with a rather verbose error message:";}i:2;i:6862;}i:135;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:7003;}i:136;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:309:"
error: failed to push some refs to '/path/to/repo.git'
hint: Updates were rejected because the tip of your current branch is behind
hint: its remote counterpart. Merge the remote changes (e.g. 'git pull')
hint: before pushing again.
hint: See the 'Note about fast-forwards' in 'git push --help' for details.
";i:1;N;i:2;N;}i:2;i:7003;}i:137;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:7003;}i:138;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:171:"This prevents Mary from overwriting official commits. She needs to pull John’s updates into her repository, integrate them with her local changes, and then try again.   ";}i:2;i:7321;}i:139;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:7492;}i:140;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:7496;}i:141;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:41:"Mary rebases on top of John’s commit(s)";i:1;i:3;i:2;i:7496;}i:2;i:7496;}i:142;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:7496;}i:143;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:7496;}i:144;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:7546;}i:145;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:40:":git_branch_model:git-workflow-svn-5.png";i:1;s:30:"Git Workflows: Git Pull Rebase";i:2;s:6:"center";i:3;N;i:4;N;i:5;s:5:"cache";i:6;s:7:"details";}i:2;i:7547;}i:146;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:7624;}i:147;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:7624;}i:148;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:241:"Mary can use git pull to incorporate upstream changes into her repository. This command is sort of like svn update—it pulls the entire upstream commit history into Mary’s local repository and tries to integrate it with her local commits:";}i:2;i:7626;}i:149;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:7873;}i:150;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:33:"
git pull --rebase origin master
";i:1;N;i:2;N;}i:2;i:7873;}i:151;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:7873;}i:152;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:"The ";}i:2;i:7915;}i:153;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:7919;}i:154;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:173:"rebase option tells Git to move all of Mary’s commits to the tip of the master branch after synchronising it with the changes from the central repository, as shown below:
";}i:2;i:7921;}i:155;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:40:":git_branch_model:git-workflow-svn-6.png";i:1;s:0:"";i:2;s:6:"center";i:3;N;i:4;N;i:5;s:5:"cache";i:6;s:7:"details";}i:2;i:8094;}i:156;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:271:"
The pull would still work if you forgot this option, but you would wind up with a superfluous “merge commit” every time someone needed to synchronize with the central repository. For this workflow, it’s always better to rebase instead of generating a merge commit.";}i:2;i:8141;}i:157;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:8413;}i:158;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:8413;}i:159;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:30:"Mary resolves a merge conflict";i:1;i:3;i:2;i:8413;}i:2;i:8413;}i:160;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:8413;}i:161;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:8413;}i:162;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:34:"Git Workflows: Rebasing on Commits";}i:2;i:8453;}i:163;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:8487;}i:164;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:8487;}i:165;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:463:"Rebasing works by transferring each local commit to the updated master branch one at a time. This means that you catch merge conflicts on a commit-by-commit basis rather than resolving all of them in one massive merge commit. This keeps your commits as focused as possible and makes for a clean project history. In turn, this makes it much easier to figure out where bugs were introduced and, if necessary, to roll back changes with minimal impact on the project.";}i:2;i:8489;}i:166;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:8952;}i:167;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:8952;}i:168;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:255:"If Mary and John are working on unrelated features, it’s unlikely that the rebasing process will generate conflicts. But if it does, Git will pause the rebase at the current commit and output the following message, along with some relevant instructions:";}i:2;i:8954;}i:169;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:9215;}i:170;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:51:"
CONFLICT (content): Merge conflict in <some-file>
";i:1;N;i:2;N;}i:2;i:9215;}i:171;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:9215;}i:172;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:40:":git_branch_model:git-workflow-svn-8.png";i:1;s:0:"";i:2;s:6:"center";i:3;N;i:4;N;i:5;s:5:"cache";i:6;s:7:"details";}i:2;i:9276;}i:173;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:220:"
The great thing about Git is that anyone can resolve their own merge conflicts. In our example, Mary would simply run a git status to see where the problem is. Conflicted files will appear in the Unmerged paths section:";}i:2;i:9323;}i:174;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:9549;}i:175;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:172:"
# Unmerged paths:
# (use "git reset HEAD <some-file>..." to unstage)
# (use "git add/rm <some-file>..." as appropriate to mark resolution)
#
# both modified: <some-file>>
";i:1;N;i:2;N;}i:2;i:9549;}i:176;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:9549;}i:177;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:161:"Then, she’ll edit the file(s) to her liking. Once she’s happy with the result, she can stage the file(s) in the usual fashion and let git rebase do the rest:";}i:2;i:9730;}i:178;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:9897;}i:179;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:56:"
git add <some-file>
git rebase --continue </some-file>
";i:1;N;i:2;N;}i:2;i:9897;}i:180;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:9897;}i:181;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:138:"And that’s all there is to it. Git will move on to the next commit and repeat the process for any other commits that generate conflicts.";}i:2;i:9962;}i:182;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:10100;}i:183;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:10100;}i:184;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:199:"If you get to this point and realize and you have no idea what’s going on, don’t panic. Just execute the following command and you’ll be right back to where you started before you ran git pull ";}i:2;i:10102;}i:185;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:10301;}i:186;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:"rebase:";}i:2;i:10303;}i:187;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:10316;}i:188;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:20:"
git rebase --abort
";i:1;N;i:2;N;}i:2;i:10316;}i:189;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:10347;}i:190;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:39:"Mary successfully publishes her feature";i:1;i:3;i:2;i:10347;}i:2;i:10347;}i:191;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:10347;}i:192;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:10347;}i:193;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:39:"Git Workflows: Synchronize Central Repo";}i:2;i:10396;}i:194;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:10435;}i:195;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:10435;}i:196;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:116:"After she’s done synchronizing with the central repository, Mary will be able to publish her changes successfully:";}i:2;i:10437;}i:197;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:10559;}i:198;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:24:"
git push origin master
";i:1;N;i:2;N;}i:2;i:10559;}i:199;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:10592;}i:200;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:21:"Where To Go From Here";i:1;i:2;i:2;i:10592;}i:2;i:10592;}i:201;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:10592;}i:202;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:10592;}i:203;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:238:"As you can see, it’s possible to replicate a traditional Subversion development environment using only a handful of Git commands. This is great for transitioning teams off of SVN, but it doesn’t leverage the distributed nature of Git.";}i:2;i:10625;}i:204;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:10863;}i:205;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:10863;}i:206;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:356:"If your team is comfortable with the Centralized Workflow but wants to streamline its collaboration efforts, it's definitely worth exploring the benefits of the Feature Branch Workflow. By dedicating an isolated branch to each feature, it’s possible to initiate in-depth discussions around new additions before integrating them into the official project.";}i:2;i:10865;}i:207;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:11221;}i:208;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:11222;}i:209;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:11222;}}