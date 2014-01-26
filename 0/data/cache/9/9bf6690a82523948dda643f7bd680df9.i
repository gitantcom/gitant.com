a:105:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:20:"Centralized Workflow";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:33:"Git Workflows: SVN-style Workflow";}i:2;i:35;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:68;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:68;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:245:"Transitioning to a distributed version control system may seem like a daunting task, but you don’t have to change your existing workflow to take advantage of Git. Your team can develop projects in the exact same way as they do with Subversion.";}i:2;i:70;}i:8;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:315;}i:9;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:315;}i:10;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:395:"However, using Git to power your development workflow presents a few advantages over SVN. First, it gives every developer their own local copy of the entire project. This isolated environment lets each developer work independently of all other changes to a project—they can add commits to their local repository and completely forget about upstream developments until it's convenient for them.";}i:2;i:317;}i:11;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:712;}i:12;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:712;}i:13;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:203:"Second, it gives you access to Git’s robust branching and merging model. Unlike SVN, Git branches are designed to be a fail-safe mechanism for integrating code and sharing changes between repositories.";}i:2;i:714;}i:14;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:918;}i:15;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:918;}i:16;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:12:"How It Works";i:1;i:2;i:2;i:918;}i:2;i:918;}i:17;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:918;}i:18;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:918;}i:19;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:318:"Like Subversion, the Centralized Workflow uses a central repository to serve as the single point-of-entry for all changes to the project. Instead of trunk, the default development branch is called master and all changes are committed into this branch. This workflow doesn’t require any other branches besides master.";}i:2;i:942;}i:20;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1260;}i:21;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1260;}i:22;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:354:"Developers start by cloning the central repository. In their own local copies of the project, they edit files and commit changes as they would with SVN; however, these new commits are stored locally—they’re completely isolated from the central repository. This lets developers defer synchronizing upstream until they’re at a convenient break point.";}i:2;i:1262;}i:23;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1616;}i:24;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1616;}i:25;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:253:"To publish changes to the official project, developers “push” their local master branch to the central repository. This is the equivalent of svn commit, except that it adds all of the local commits that aren’t already in the central master branch.";}i:2;i:1618;}i:26;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1871;}i:27;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1873;}i:28;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:18:"Managing Conflicts";i:1;i:3;i:2;i:1873;}i:2;i:1873;}i:29;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:1873;}i:30;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1873;}i:31;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:273:"The central repository represents the official project, so its commit history should be treated as sacred and immutable. If a developer’s local commits diverge from the central repository, Git will refuse to push his changes because this would overwrite official commits.";}i:2;i:1901;}i:32;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2174;}i:33;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2174;}i:34;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:304:"Before the developer can publish his feature, he needs to fetch the updated central commits and rebase his changes on top of them. This is like saying, “I want to add my changes to what everyone else has already done.” The result is a perfectly linear history, just like in traditional SVN workflows.";}i:2;i:2176;}i:35;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2480;}i:36;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2480;}i:37;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:483:"If local changes directly conflict with upstream commits, Git will pause the rebasing process and give you a chance to manually resolve the conflicts. The nice thing about Git is that it uses the same git status and git add commands for both generating commits and resolving merge conflicts. This makes it easy for new developers to manage their own merges. Plus, if they get themselves into trouble, Git makes it very easy to abort the entire rebase and try again (or go find help).";}i:2;i:2482;}i:38;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2966;}i:39;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2966;}i:40;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:7:"Example";i:1;i:2;i:2;i:2966;}i:2;i:2966;}i:41;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:2966;}i:42;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2966;}i:43;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:236:"Let’s take a step-by-step look at how a typical small team would collaborate using this workflow. We’ll see how two developers, John and Mary, can work on separate features and share their contributions via a centralized repository.";}i:2;i:2985;}i:44;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3222;}i:45;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:3222;}i:46;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:42:"Someone initializes the central repository";i:1;i:3;i:2;i:3222;}i:2;i:3222;}i:47;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:3222;}i:48;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3222;}i:49;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:49:"Git Workflows: Initialize Central Bare Repository";}i:2;i:3274;}i:50;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3323;}i:51;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3323;}i:52;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:201:"First, someone needs to create the central repository on a server. If it’s a new project, you can initialize an empty repository. Otherwise, you’ll need to import an existing Git or SVN repository.";}i:2;i:3325;}i:53;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3526;}i:54;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3526;}i:55;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:133:"Central repositories should always be bare repositories (they shouldn’t have a working directory), which can be created as follows:";}i:2;i:3528;}i:56;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3661;}i:57;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3661;}i:58;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:23:"ssh user@host
git init ";}i:2;i:3663;}i:59;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:3686;}i:60;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:22:"bare /path/to/repo.git";}i:2;i:3688;}i:61;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3710;}i:62;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3710;}i:63;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:293:"Be sure to use a valid SSH username for user, the domain or IP address of your server for host, and the location where you'd like to store your repo for /path/to/repo.git. Note that the .git extension is conventionally appended to the repository name to indicate that it’s a bare repository.";}i:2;i:3712;}i:64;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4006;}i:65;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:4006;}i:66;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:39:"Everybody clones the central repository";i:1;i:3;i:2;i:4006;}i:2;i:4006;}i:67;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:4006;}i:68;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4006;}i:69;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:33:"Git Workflows: Clone Central Repo";}i:2;i:4055;}i:70;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4088;}i:71;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4088;}i:72;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:112:"Next, each developer creates a local copy of the entire project. This is accomplished via the git clone command:";}i:2;i:4090;}i:73;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4202;}i:74;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4202;}i:75;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:14:"git clone ssh:";}i:2;i:4204;}i:76;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:4218;}i:77;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:2780:"user@host/path/to/repo.git

When you clone a repository, Git automatically adds a shortcut called origin that points back to the “parent” repository, under the assumption that you'll want to interact with it further on down the road.
====John works on his feature====

Git Workflows: Edit Stage Commit Feature Process

In his local repository, John can develop features using the standard Git commit process: edit, stage, and commit. If you’re not familiar with the staging area, it’s a way to prepare a commit without having to include every change in the working directory. This lets you create highly focused commits, even if you’ve made a lot of local changes.

git status # View the state of the repo
git add # Stage a file
git commit # Commit a file

Remember that since these commands create local commits, John can repeat this process as many times as he wants without worrying about what’s going on in the central repository. This can be very useful for large features that need to be broken down into simpler, more atomic chunks.
====Mary works on her feature====

Git Workflows: Edit Stage Commit Feature

Meanwhile, Mary is working on her own feature in her own local repository using the same edit/stage/commit process. Like John, she doesn’t care what’s going on in the central repository, and she really doesn’t care what John is doing in his local repository, since all local repositories are private.
====John publishes his feature====

Git Workflows: Publish Feature

Once John finishes his feature, he should publish his local commits to the central repository so other team members can access it. He can do this with the git push command, like so:

git push origin master

Remember that origin is the remote connection to the central repository that Git created when John cloned it. The master argument tells Git to try to make the origin’s master branch look like his local master branch. Since the central repository hasn’t been updated since John cloned it, this won’t result in any conflicts and the push will work as expected.
====Mary tries to publish her feature====

Git Workflows: Push Command Error

Let’s see what happens if Mary tries to push her feature after John has successfully published his changes to the central repository. She can use the exact same push command:

git push origin master

But, since her local history has diverged from the central repository, Git will refuse the request with a rather verbose error message:

error: failed to push some refs to '/path/to/repo.git'
hint: Updates were rejected because the tip of your current branch is behind
hint: its remote counterpart. Merge the remote changes (e.g. 'git pull')
hint: before pushing again.
hint: See the 'Note about fast-forwards' in 'git push ";}i:2;i:4220;}i:78;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:7000;}i:79;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:524:"help' for details.

This prevents Mary from overwriting official commits. She needs to pull John’s updates into her repository, integrate them with her local changes, and then try again.
====Mary rebases on top of John’s commit(s)====

Git Workflows: Git Pull Rebase

Mary can use git pull to incorporate upstream changes into her repository. This command is sort of like svn update—it pulls the entire upstream commit history into Mary’s local repository and tries to integrate it with her local commits:

git pull ";}i:2;i:7002;}i:80;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:7526;}i:81;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:26:"rebase origin master

The ";}i:2;i:7528;}i:82;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:7554;}i:83;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1540:"rebase option tells Git to move all of Mary’s commits to the tip of the master branch after synchronising it with the changes from the central repository, as shown below:

The pull would still work if you forgot this option, but you would wind up with a superfluous “merge commit” every time someone needed to synchronize with the central repository. For this workflow, it’s always better to rebase instead of generating a merge commit.
====Mary resolves a merge conflict====

Git Workflows: Rebasing on Commits

Rebasing works by transferring each local commit to the updated master branch one at a time. This means that you catch merge conflicts on a commit-by-commit basis rather than resolving all of them in one massive merge commit. This keeps your commits as focused as possible and makes for a clean project history. In turn, this makes it much easier to figure out where bugs were introduced and, if necessary, to roll back changes with minimal impact on the project.

If Mary and John are working on unrelated features, it’s unlikely that the rebasing process will generate conflicts. But if it does, Git will pause the rebase at the current commit and output the following message, along with some relevant instructions:

CONFLICT (content): Merge conflict in <some-file>

The great thing about Git is that anyone can resolve their own merge conflicts. In our example, Mary would simply run a git status to see where the problem is. Conflicted files will appear in the Unmerged paths section:

# Unmerged paths:
# (use ";}i:2;i:7556;}i:84;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:9096;}i:85;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:26:"git reset HEAD <some-file>";}i:2;i:9097;}i:86;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:9123;}i:87;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:9126;}i:88;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:20:" to unstage)
# (use ";}i:2;i:9127;}i:89;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:9147;}i:90;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:22:"git add/rm <some-file>";}i:2;i:9148;}i:91;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:9170;}i:92;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:9173;}i:93;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:65:" as appropriate to mark resolution)
#
# both modified: <some-file";}i:2;i:9174;}i:94;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:">>";}i:2;i:9239;}i:95;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:196:"

Then, she’ll edit the file(s) to her liking. Once she’s happy with the result, she can stage the file(s) in the usual fashion and let git rebase do the rest:

git add <some-file>
git rebase ";}i:2;i:9241;}i:96;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:9437;}i:97;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:362:"continue </some-file>

And that’s all there is to it. Git will move on to the next commit and repeat the process for any other commits that generate conflicts.

If you get to this point and realize and you have no idea what’s going on, don’t panic. Just execute the following command and you’ll be right back to where you started before you ran git pull ";}i:2;i:9439;}i:98;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:9801;}i:99;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:20:"rebase:

git rebase ";}i:2;i:9803;}i:100;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:9823;}i:101;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:869:"abort

 
====Mary successfully publishes her feature====

Git Workflows: Synchronize Central Repo

After she’s done synchronizing with the central repository, Mary will be able to publish her changes successfully:

git push origin master
=====Where To Go From Here=====

As you can see, it’s possible to replicate a traditional Subversion development environment using only a handful of Git commands. This is great for transitioning teams off of SVN, but it doesn’t leverage the distributed nature of Git.

If your team is comfortable with the Centralized Workflow but wants to streamline its collaboration efforts, it's definitely worth exploring the benefits of the Feature Branch Workflow. By dedicating an isolated branch to each feature, it’s possible to initiate in-depth discussions around new additions before integrating them into the official project.";}i:2;i:9825;}i:102;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:9825;}i:103;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:9825;}i:104;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:9825;}}