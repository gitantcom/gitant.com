a:320:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:13:"Using Tickets";i:1;i:2;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:11:"SINCE 1.4.0";}i:2;i:26;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:37;}i:6;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:39;}i:7;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:25:"Creating Standard Tickets";i:1;i:3;i:2;i:39;}i:2;i:39;}i:8;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:39;}i:9;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:39;}i:10;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:114:"Standard tickets can be created using the web ui. These ticket types include Bug, Enhancement, task, and Question.";}i:2;i:75;}i:11;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:189;}i:12;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:191;}i:13;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:26:"Creating a Proposal Ticket";i:1;i:3;i:2;i:191;}i:2;i:191;}i:14;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:191;}i:15;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:191;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:114:"Proposal tickets are created by pushing a single commit to the magic ref. They can not be created from the web ui.";}i:2;i:227;}i:17;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:341;}i:18;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:341;}i:19;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:71:"Why is there a single commit limitation for creating a Proposal Ticket?";}i:2;i:343;}i:20;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:414;}i:21;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:414;}i:22;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:226:"Because the ticket which will be created for your commit will use your commit's message to define the Ticket's title and description. After the ticket is created, you can add as many commits as you want to the ticket's branch.";}i:2;i:416;}i:23;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:642;}i:24;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:642;}i:25;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:37:"Why would I create a proposal ticket?";}i:2;i:644;}i:26;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:681;}i:27;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:681;}i:28;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:175:"Because you are too lazy to create a ticket in the web ui first. The proposal ticket is a convenience mechanism. It allows you to propose a change using Git, not your browser.";}i:2;i:683;}i:29;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:858;}i:30;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:858;}i:31;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:33:"Who can create a proposal ticket?";}i:2;i:860;}i:32;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:893;}i:33;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:893;}i:34;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:53:"Any authenticated user who can clone your repository.";}i:2;i:895;}i:35;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:954;}i:36;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:213:"
git clone https://server/r/repo.git
cd repo
git checkout -b mytopic
...add a single commit...
git push origin HEAD:refs/for/new
# read ticket id from server output
git branch --set-upstream-to=origin/ticket/{id}
";i:1;N;i:2;N;}i:2;i:954;}i:37;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1177;}i:38;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:50:"Creating the first Patchset for an Existing Ticket";i:1;i:3;i:2;i:1177;}i:2;i:1177;}i:39;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:1177;}i:40;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1177;}i:41;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:115:"If you have an existing ticket that does not yet have a proposed patchset you can push using the ticket branch ref.";}i:2;i:1237;}i:42;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1352;}i:43;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1352;}i:44;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:57:"Who can create the first patchset for an existing ticket?";}i:2;i:1354;}i:45;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1411;}i:46;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1411;}i:47;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:53:"Any authenticated user who can clone your repository.";}i:2;i:1413;}i:48;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1472;}i:49;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:146:"
git clone https://server/r/repo.git
cd repo
git checkout -b ticket/{id}
...add one or more commits...
git push --set-upstream origin ticket/{id}
";i:1;N;i:2;N;}i:2;i:1472;}i:50;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1628;}i:51;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:58:"Safely adding commits to a Patchset for an Existing Ticket";i:1;i:3;i:2;i:1628;}i:2;i:1628;}i:52;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:1628;}i:53;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1628;}i:54;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:44:"Who can add commits to an existing patchset?";}i:2;i:1696;}i:55;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1740;}i:56;a:3:{i:0;s:10:"listo_open";i:1;a:0:{}i:2;i:1740;}i:57;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:1740;}i:58;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:1740;}i:59;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:18:" The ticket author";}i:2;i:1744;}i:60;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:1762;}i:61;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:1762;}i:62;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:1762;}i:63;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:1762;}i:64;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:28:" The initial patchset author";}i:2;i:1766;}i:65;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:1794;}i:66;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:1794;}i:67;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:1794;}i:68;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:1794;}i:69;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:30:" The person set as responsible";}i:2;i:1798;}i:70;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:1828;}i:71;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:1828;}i:72;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:1828;}i:73;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:1828;}i:74;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:55:" Any user with write (RW) permissions to the repository";}i:2;i:1832;}i:75;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:1887;}i:76;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:1887;}i:77;a:3:{i:0;s:11:"listo_close";i:1;a:0:{}i:2;i:1887;}i:78;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:97:"
git fetch && git checkout ticket/{id}
git pull --ff-only
...add one or more commits...
git push
";i:1;N;i:2;N;}i:2;i:1893;}i:79;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2000;}i:80;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:44:"Rewriting a Patchset (amend, rebase, squash)";i:1;i:3;i:2;i:2000;}i:2;i:2000;}i:81;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:2000;}i:82;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2000;}i:83;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:27:"Who can rewrite a patchset?";}i:2;i:2054;}i:84;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2081;}i:85;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2081;}i:86;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:259:"See the above rules for who can add commits to a patchset. You do not need rewind (RW+) to the repository to push a non-fast-forward patchset. Gitblit will detect the non-fast-forward update and create a new patchset ref. This preserves the previous patchset.";}i:2;i:2083;}i:87;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2348;}i:88;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:121:"
git fetch && git checkout ticket/{id}
git pull --ff-only
...amend, rebase, squash...
git push origin HEAD:refs/for/{id}
";i:1;N;i:2;N;}i:2;i:2348;}i:89;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2348;}i:90;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:64:"OR if you have RW+ permissions, then you can push using -f flag.";}i:2;i:2479;}i:91;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2549;}i:92;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:13:"
git push -f
";i:1;N;i:2;N;}i:2;i:2549;}i:93;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2549;}i:94;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:42:"Updating your copy of a rewritten Patchset";}i:2;i:2572;}i:95;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2614;}i:96;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2614;}i:97;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:258:"If a patchset has been rewritten you can no longer simply pull to update. Let's assume your checkout does not have any unshared commits - i.e. it represents the previous patchset. The simplest way to update your branch to the current patchset is to reset it.";}i:2;i:2616;}i:98;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2880;}i:99;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:75:"
git fetch && git checkout ticket/{id}
git reset --hard origin/ticket/{id}
";i:1;N;i:2;N;}i:2;i:2880;}i:100;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2880;}i:101;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:140:"If you do have unshared commits then you'll could make a new temporary branch and then cherry-pick your changes onto the rewritten patchset.";}i:2;i:2965;}i:102;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3111;}i:103;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:172:"
git branch oldticket ticket/{id}
git fetch && git checkout ticket/{id}
git reset --hard origin/ticket/{id}
git cherry-pick <commitid1> <commitid2>
git branch -D oldticket
";i:1;N;i:2;N;}i:2;i:3111;}i:104;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3111;}i:105;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:149:"Git is a very flexible tool, there are no doubt several other strategies you could use to resolve this situation. The above solution is just one way.";}i:2;i:3293;}i:106;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3442;}i:107;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:3444;}i:108;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:15:"Ticket RefSpecs";i:1;i:3;i:2;i:3444;}i:2;i:3444;}i:109;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:3444;}i:110;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3444;}i:111;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:80:"Gitblit supports two primary push ref specs: the magic ref and the patchset ref.";}i:2;i:3469;}i:112;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3549;}i:113;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:3551;}i:114;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:31:"to create a new proposal ticket";i:1;i:4;i:2;i:3551;}i:2;i:3551;}i:115;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:3551;}i:116;a:3:{i:0;s:10:"table_open";i:1;a:3:{i:0;i:2;i:1;i:4;i:2;i:3591;}i:2;i:3590;}i:117;a:3:{i:0;s:13:"tablerow_open";i:1;a:0:{}i:2;i:3590;}i:118;a:3:{i:0;s:16:"tableheader_open";i:1;a:3:{i:0;i:1;i:1;s:4:"left";i:2;i:1;}i:2;i:3590;}i:119;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:23:"ref                    ";}i:2;i:3592;}i:120;a:3:{i:0;s:17:"tableheader_close";i:1;a:0:{}i:2;i:3615;}i:121;a:3:{i:0;s:16:"tableheader_open";i:1;a:3:{i:0;i:1;i:1;s:4:"left";i:2;i:1;}i:2;i:3615;}i:122;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:42:" description                              ";}i:2;i:3616;}i:123;a:3:{i:0;s:17:"tableheader_close";i:1;a:0:{}i:2;i:3658;}i:124;a:3:{i:0;s:14:"tablerow_close";i:1;a:0:{}i:2;i:3659;}i:125;a:3:{i:0;s:13:"tablerow_open";i:1;a:0:{}i:2;i:3659;}i:126;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:4:"left";i:2;i:1;}i:2;i:3659;}i:127;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:23:"refs/for/new           ";}i:2;i:3661;}i:128;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:3684;}i:129;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:4:"left";i:2;i:1;}i:2;i:3684;}i:130;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:42:" new proposal for the default branch      ";}i:2;i:3685;}i:131;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:3727;}i:132;a:3:{i:0;s:14:"tablerow_close";i:1;a:0:{}i:2;i:3728;}i:133;a:3:{i:0;s:13:"tablerow_open";i:1;a:0:{}i:2;i:3728;}i:134;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:4:"left";i:2;i:1;}i:2;i:3728;}i:135;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:23:"refs/for/default       ";}i:2;i:3730;}i:136;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:3753;}i:137;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:4:"left";i:2;i:1;}i:2;i:3753;}i:138;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:42:" new proposal for the default branch      ";}i:2;i:3754;}i:139;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:3796;}i:140;a:3:{i:0;s:14:"tablerow_close";i:1;a:0:{}i:2;i:3797;}i:141;a:3:{i:0;s:13:"tablerow_open";i:1;a:0:{}i:2;i:3797;}i:142;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:4:"left";i:2;i:1;}i:2;i:3797;}i:143;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:23:"refs/for/{branch}      ";}i:2;i:3799;}i:144;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:3822;}i:145;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:4:"left";i:2;i:1;}i:2;i:3822;}i:146;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:42:" new proposal for the specified branch    ";}i:2;i:3823;}i:147;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:3865;}i:148;a:3:{i:0;s:14:"tablerow_close";i:1;a:0:{}i:2;i:3866;}i:149;a:3:{i:0;s:11:"table_close";i:1;a:1:{i:0;i:3866;}i:2;i:3866;}i:150;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:3869;}i:151;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:65:"to add a proposal patchset (first patchset) to an existing ticket";i:1;i:4;i:2;i:3869;}i:2;i:3869;}i:152;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:3869;}i:153;a:3:{i:0;s:10:"table_open";i:1;a:3:{i:0;i:2;i:1;i:2;i:2;i:3944;}i:2;i:3943;}i:154;a:3:{i:0;s:13:"tablerow_open";i:1;a:0:{}i:2;i:3943;}i:155;a:3:{i:0;s:16:"tableheader_open";i:1;a:3:{i:0;i:1;i:1;s:4:"left";i:2;i:1;}i:2;i:3943;}i:156;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:26:"ref                       ";}i:2;i:3945;}i:157;a:3:{i:0;s:17:"tableheader_close";i:1;a:0:{}i:2;i:3971;}i:158;a:3:{i:0;s:16:"tableheader_open";i:1;a:3:{i:0;i:1;i:1;s:4:"left";i:2;i:1;}i:2;i:3971;}i:159;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:47:"description                                    ";}i:2;i:3972;}i:160;a:3:{i:0;s:17:"tableheader_close";i:1;a:0:{}i:2;i:4019;}i:161;a:3:{i:0;s:14:"tablerow_close";i:1;a:0:{}i:2;i:4020;}i:162;a:3:{i:0;s:13:"tablerow_open";i:1;a:0:{}i:2;i:4020;}i:163;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:4:"left";i:2;i:1;}i:2;i:4020;}i:164;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:26:"refs/for/{id}             ";}i:2;i:4022;}i:165;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:4048;}i:166;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:4:"left";i:2;i:1;}i:2;i:4048;}i:167;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:48:"add new patchset to an existing ticket          ";}i:2;i:4049;}i:168;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:4097;}i:169;a:3:{i:0;s:14:"tablerow_close";i:1;a:0:{}i:2;i:4098;}i:170;a:3:{i:0;s:11:"table_close";i:1;a:1:{i:0;i:4098;}i:2;i:4098;}i:171;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:4100;}i:172;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:38:"to add commits to an existing patchset";i:1;i:3;i:2;i:4100;}i:2;i:4100;}i:173;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:4100;}i:174;a:3:{i:0;s:10:"table_open";i:1;a:3:{i:0;i:2;i:1;i:2;i:2;i:4149;}i:2;i:4148;}i:175;a:3:{i:0;s:13:"tablerow_open";i:1;a:0:{}i:2;i:4148;}i:176;a:3:{i:0;s:16:"tableheader_open";i:1;a:3:{i:0;i:1;i:1;s:4:"left";i:2;i:1;}i:2;i:4148;}i:177;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:27:"ref                        ";}i:2;i:4150;}i:178;a:3:{i:0;s:17:"tableheader_close";i:1;a:0:{}i:2;i:4177;}i:179;a:3:{i:0;s:16:"tableheader_open";i:1;a:3:{i:0;i:1;i:1;s:4:"left";i:2;i:1;}i:2;i:4177;}i:180;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:36:"description                         ";}i:2;i:4178;}i:181;a:3:{i:0;s:17:"tableheader_close";i:1;a:0:{}i:2;i:4214;}i:182;a:3:{i:0;s:14:"tablerow_close";i:1;a:0:{}i:2;i:4215;}i:183;a:3:{i:0;s:13:"tablerow_open";i:1;a:0:{}i:2;i:4215;}i:184;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:4:"left";i:2;i:1;}i:2;i:4215;}i:185;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:27:"refs/heads/ticket/{id}     ";}i:2;i:4217;}i:186;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:4244;}i:187;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:4:"left";i:2;i:1;}i:2;i:4244;}i:188;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:36:"fast-forward an existing patchset   ";}i:2;i:4245;}i:189;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:4281;}i:190;a:3:{i:0;s:14:"tablerow_close";i:1;a:0:{}i:2;i:4284;}i:191;a:3:{i:0;s:11:"table_close";i:1;a:1:{i:0;i:4284;}i:2;i:4284;}i:192;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:4286;}i:193;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:45:"to rewrite a patchset (amend, rebase, squash)";i:1;i:3;i:2;i:4286;}i:2;i:4286;}i:194;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:4286;}i:195;a:3:{i:0;s:10:"table_open";i:1;a:3:{i:0;i:2;i:1;i:2;i:2;i:4342;}i:2;i:4341;}i:196;a:3:{i:0;s:13:"tablerow_open";i:1;a:0:{}i:2;i:4341;}i:197;a:3:{i:0;s:16:"tableheader_open";i:1;a:3:{i:0;i:1;i:1;s:4:"left";i:2;i:1;}i:2;i:4341;}i:198;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:28:"magic ref                   ";}i:2;i:4343;}i:199;a:3:{i:0;s:17:"tableheader_close";i:1;a:0:{}i:2;i:4371;}i:200;a:3:{i:0;s:16:"tableheader_open";i:1;a:3:{i:0;i:1;i:1;s:4:"left";i:2;i:1;}i:2;i:4371;}i:201;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:24:"description             ";}i:2;i:4372;}i:202;a:3:{i:0;s:17:"tableheader_close";i:1;a:0:{}i:2;i:4396;}i:203;a:3:{i:0;s:14:"tablerow_close";i:1;a:0:{}i:2;i:4397;}i:204;a:3:{i:0;s:13:"tablerow_open";i:1;a:0:{}i:2;i:4397;}i:205;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:4:"left";i:2;i:1;}i:2;i:4397;}i:206;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:28:"refs/for/{id}               ";}i:2;i:4399;}i:207;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:4427;}i:208;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:4:"left";i:2;i:1;}i:2;i:4427;}i:209;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:25:" to rewrite a patchset   ";}i:2;i:4428;}i:210;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:4453;}i:211;a:3:{i:0;s:14:"tablerow_close";i:1;a:0:{}i:2;i:4454;}i:212;a:3:{i:0;s:11:"table_close";i:1;a:1:{i:0;i:4454;}i:2;i:4454;}i:213;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:4456;}i:214;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:21:"Ticket RefSpec Tricks";i:1;i:3;i:2;i:4456;}i:2;i:4456;}i:215;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:4456;}i:216;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4456;}i:217;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:127:"Gitblit supports setting some ticket fields from the push refspec.
refs/for/master%topic=bug/42,r=james,m=1.4.1,cc=dave,cc=mark";}i:2;i:4487;}i:218;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4614;}i:219;a:3:{i:0;s:10:"table_open";i:1;a:3:{i:0;i:2;i:1;i:5;i:2;i:4618;}i:2;i:4617;}i:220;a:3:{i:0;s:13:"tablerow_open";i:1;a:0:{}i:2;i:4617;}i:221;a:3:{i:0;s:16:"tableheader_open";i:1;a:3:{i:0;i:1;i:1;s:4:"left";i:2;i:1;}i:2;i:4617;}i:222;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:16:"parameter       ";}i:2;i:4619;}i:223;a:3:{i:0;s:17:"tableheader_close";i:1;a:0:{}i:2;i:4635;}i:224;a:3:{i:0;s:16:"tableheader_open";i:1;a:3:{i:0;i:1;i:1;s:4:"left";i:2;i:1;}i:2;i:4635;}i:225;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:66:" description                                                      ";}i:2;i:4636;}i:226;a:3:{i:0;s:17:"tableheader_close";i:1;a:0:{}i:2;i:4702;}i:227;a:3:{i:0;s:14:"tablerow_close";i:1;a:0:{}i:2;i:4703;}i:228;a:3:{i:0;s:13:"tablerow_open";i:1;a:0:{}i:2;i:4703;}i:229;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:4:"left";i:2;i:1;}i:2;i:4703;}i:230;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:16:"t               ";}i:2;i:4705;}i:231;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:4721;}i:232;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:4:"left";i:2;i:1;}i:2;i:4721;}i:233;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:66:"assign a topic to the ticket (matched against bugtraq config)     ";}i:2;i:4722;}i:234;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:4788;}i:235;a:3:{i:0;s:14:"tablerow_close";i:1;a:0:{}i:2;i:4789;}i:236;a:3:{i:0;s:13:"tablerow_open";i:1;a:0:{}i:2;i:4789;}i:237;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:4:"left";i:2;i:1;}i:2;i:4789;}i:238;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:16:"r               ";}i:2;i:4791;}i:239;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:4807;}i:240;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:4:"left";i:2;i:1;}i:2;i:4807;}i:241;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:66:"set the responsible user                                          ";}i:2;i:4808;}i:242;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:4874;}i:243;a:3:{i:0;s:14:"tablerow_close";i:1;a:0:{}i:2;i:4877;}i:244;a:3:{i:0;s:13:"tablerow_open";i:1;a:0:{}i:2;i:4877;}i:245;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:4:"left";i:2;i:1;}i:2;i:4877;}i:246;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:"m  ";}i:2;i:4879;}i:247;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:4882;}i:248;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:4:"left";i:2;i:1;}i:2;i:4882;}i:249;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:44:"set the milestone for patchset integration  ";}i:2;i:4883;}i:250;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:4927;}i:251;a:3:{i:0;s:14:"tablerow_close";i:1;a:0:{}i:2;i:4928;}i:252;a:3:{i:0;s:13:"tablerow_open";i:1;a:0:{}i:2;i:4928;}i:253;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:4:"left";i:2;i:1;}i:2;i:4928;}i:254;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:"cc  ";}i:2;i:4930;}i:255;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:4934;}i:256;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:4:"left";i:2;i:1;}i:2;i:4934;}i:257;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:59:"add this account to the watch list (multiple ccs allowed)  ";}i:2;i:4935;}i:258;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:4994;}i:259;a:3:{i:0;s:14:"tablerow_close";i:1;a:0:{}i:2;i:4995;}i:260;a:3:{i:0;s:11:"table_close";i:1;a:1:{i:0;i:4995;}i:2;i:4995;}i:261;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:4997;}i:262;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:8:"examples";i:1;i:4;i:2;i:4997;}i:2;i:4997;}i:263;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:4997;}i:264;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4997;}i:265;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:178:"Create a new patchset for ticket 12, add james and mark to the watch list, and set the topic to JIRA-123 which will be regex-matched against the repository bugtraq configuration.";}i:2;i:5013;}i:266;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5197;}i:267;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:62:"
git push origin HEAD:refs/for/12%cc=james,cc=mark,t=JIRA-123
";i:1;N;i:2;N;}i:2;i:5197;}i:268;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5197;}i:269;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:73:"Add some commits (fast-forward) to ticket 12. Set the milestone to 1.4.1.";}i:2;i:5269;}i:270;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5348;}i:271;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:51:"
git push origin HEAD:refs/heads/ticket/12%m=1.4.1
";i:1;N;i:2;N;}i:2;i:5348;}i:272;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:5409;}i:273;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:17:"Merging Patchsets";i:1;i:3;i:2;i:5409;}i:2;i:5409;}i:274;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:5409;}i:275;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5409;}i:276;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:168:"The Gitblit web ui offers a merge button which should work but is not fully tested. Gitblit does verify that you can cleanly merge a patchset to the integration branch.";}i:2;i:5436;}i:277;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5604;}i:278;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5604;}i:279;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:284:"There are complicated merge scenarios for which it may be best to merge using your Git client. There are several ways to do this, here is a safe merge strategy which pulls into a new branch and then fast-forwards your integration branch, assuming you were happy with the pull (merge).";}i:2;i:5606;}i:280;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5890;}i:281;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:178:"
git pull origin master
git checkout -b ticket-{id} master
git pull origin ticket/{id}
git checkout master
git merge ticket-{id}
git push origin master
git branch -d ticket-{id}
";i:1;N;i:2;N;}i:2;i:5897;}i:282;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:6085;}i:283;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:54:"Closing Tickets on Push with a Completely New Patchset";i:1;i:3;i:2;i:6085;}i:2;i:6085;}i:284;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:6085;}i:285;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6085;}i:286;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:212:"Gitblit will look for patchset references on pushes to normal branches. If it finds a reference (like would be found in the previous merge instructions), the ticket is resolved as merged and everyone is notified.";}i:2;i:6149;}i:287;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6361;}i:288;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6361;}i:289;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:474:"If you do not need to create a patchset for review, you can just push a commit to the integration branch that contains fixes #1 or closes #1 in the commit message. Gitblit will identify the ticket, create a new patchset with that commit as the tip, and resolve the ticket as merged. (And if the integration branch is not specified in the ticket - this is the case for a ticket without any existing patchsets - Gitblit will resolve the ticket as merged to the pushed branch).";}i:2;i:6363;}i:290;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6837;}i:291;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:6839;}i:292;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:32:"Reopening Tickets with Patchsets";i:1;i:3;i:2;i:6839;}i:2;i:6839;}i:293;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:6839;}i:294;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6839;}i:295;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:299:"Gitblit allows you to reopen a Ticket with a merged patchset. Since Gitblit allows patchset rewrites and versions patchsets, this seems like a logical capability. There is no need to create another ticket for a feature request or bug report if the merged commits did not actually resolve the ticket.";}i:2;i:6881;}i:296;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:7180;}i:297;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:7180;}i:298;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:102:"This allows you to continue the discussion and create a new patchset that hopefully resolves the need.";}i:2;i:7182;}i:299;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:7284;}i:300;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:7284;}i:301;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:229:"NOTE: There is one caveat to this feature. You can not push patchsets to a closed ticket; Gitblit will reject the push. You must first reopen the ticket through the web ui before you may push your patchset update or new patchset.";}i:2;i:7286;}i:302;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:7515;}i:303;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:7517;}i:304;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:7:"Reviews";i:1;i:3;i:2;i:7517;}i:2;i:7517;}i:305;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:7517;}i:306;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:7517;}i:307;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:331:"Gitblit includes a very simple patchset scoring mechanism. Gitblit is not code-review system, but for those who have simple needs, this may suffice.
•+2, approved: patchset can be merged
•+1, looks good: someone else must approve for merge
•-1, needs improvement: please do not merge
•-2, vetoed: patchset may not be merged";}i:2;i:7534;}i:308;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:7865;}i:309;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:7865;}i:310;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:533:"Only users with write (RW) permissions to the repository can give a +2 and -2 score. All other users are allowed to score +/-1. If the repository is configured to require approval then then +2 score has an important meaning. The merge button will only be shown if there is at least one +2 score and no -2 scores. If there is a -2 score, the merge is blocked by the web ui. Users with RW permissions, however, can still manually merge and push the patchset to the integration branch; Gitblit does not enforce vetoed patchsets on push.";}i:2;i:7867;}i:311;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:8400;}i:312;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:8400;}i:313;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:42:"Reviews and Updated or Rewritten Patchsets";}i:2;i:8402;}i:314;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:8444;}i:315;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:8444;}i:316;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:180:"If the patchset is updated or rewritten, all former review scores are ignored; review scores apply to specific revisions of patchsets - they are not blanket approvals/disapprovals.";}i:2;i:8446;}i:317;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:8626;}i:318;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:8627;}i:319;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:8627;}}