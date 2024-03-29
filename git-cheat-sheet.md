## [Git documentation link](http://gitref.org/basic/)
 Git commands
===============
  - *git init* : init the repository 
  
  - *git clone* : clone the repository
```sh
    git clone /path/to/repository  --> clone a local copy
    git clone username@host:/path/to/repository --> clone from a remote repository
```  

- *git add* : Add the files for Index or Stage
```sh
    git add filename
    git add *
    git add -p --> this gives the option to decide what files need to be staged.
```

- *git commit* : Commit the changes to the HEAD
```sh
   git commit -m "Add appropriate comments"
   git commit --amend --> changes the content of the previous commit
   git commit --amend --no-edit --> commit with old message itself just adding new files to the stage that was missed before
```

 - *git push* : Your changes are now in the HEAD of your local working copy. Change master to whatever branch you want to push your changes to.
 ```sh
  git push origin master
  git push [alias] [branch]
  git push -u origin branch --> this needs to be done first time when pushing the branch to remote
 ```
 
  - *git branch* : list the branch you are currently in
```sh
   git branch branchname --> create a new branch at the current commit
   git branch -v --> see the last commit on each branch
   git checkout -b newbranch --> create a new branch and then start using it immediately
   git branch -d branchname --> delete a branch
   git push remote-name localbranch:remotebranch or git push remotename --delete branchname
```

 - *git remote*
```sh
  git remote -v
  git remote add [alias] [url] --> add a git URL as an alias
  git remote add origin <server> --> If you have not cloned an existing repository and want to connect your repository to a remote server.
  git remote rm [alias]
  git remote rename [old-alias] [new-alias]
  git remote set-url --> update an existing remote URL
  git remote set-url --push origin url --> diff push url
```

 - *git pull* : fetch and merge any commits from the tracking remote branch
 git pull remote --> pull the changes from the current remote to the current branch
 git pull --rebase <remote> --> use rebase merge strategy
 
 - *git merge* : Merge changes from another branch to the active branch
 git checkout master
 git merge origin/master
 
```sh
   git diff is helpful
   git merge [alias]/[branch] --> merge a remote branch into your current branch to bring it up to date
   git merge branchname
```

 - *git diff*
```sh
    git diff --> working dir vs HEAD, diff of what is changed but not staged
    git diff HEAD --> see the changes in both the staged and working area

    git diff --cached --> staged changes vs HEAD
    git diff --staged --> diff of what is staged but not yet commited
    
    git diff branch1..other-feature-brannch --> diff between HEAD of both branches
    git diff <source_branch> <target_branch>
    git diff branch1...branch2 ---> diff from a shared common ancestor
```

 - *git tag*
```sh
   git tag --> listing tags
   git tag v1.4-lw ---> lightweight tags
   git tag -a v1.0 --> tag the current commit
   git tag -a v0.9 558151a --> tag a different commit 
   git log --oneline --decorate --graph
   git push origin v1.4 --> push tag
   git fetch origin --tags --> download tags ,by default the tags are not included
   git fetch <remote> tag <tag-name> --> give a needed tag
```

 - *git log*
```sh
   git log --oneline
   git log --oneline --graph --decorate --all --> want to see an ASCII art tree of all the branches, decorated with the names of tags and branches
   git log --oneline erlang ^master --> commits in erlang not in master
   git log --author=bob --> see commits by a particular author
   git log --pretty=oneline --> to see a very compressed log where each commit is one line
   git log --name-status --> to see only files that have changed
   git log branchB..branchA --> show the commits on branchA that are not on branchB, this can also be a commit id
   git log --follow [file] --> show the commits that changed file, even across renames
   git log --stat -M --> show all commit logs with indication of any paths that moved
   git log -p --> get more detailed information
```

- *git blame*
```sh
git blame filename --> get details on a particular file

```
  - *git reset*
  This is best for undoing local changes for shared repository better to use git reverst since it does not remove the commit.
```sh
  git reset or git reset HEAD or git reset --mixed HEAD --> the index is also changed to the stage in the previous commit
  git reset --soft --> the HEAD is only changed from commit history
  git reset --soft [commitid] --> basically moves it back to the staging area
  git reset --mixed [commitid] --> moves it back to the working area
  git reset --hard [commit] --> clear staging area, rewrite working tree from specified commit
  git reset --hard --> everything including the working directory is changed.
  git reset [file] --> unstage a file while retaining the changes in working directory
```

- *git reflog* : track the HEAD

- *git cherry-pick*: gets a particular commit back to the branch

- *git rm* : removes the file from the staging area as well as the working dir
```sh
  git rm --cached --> working dir has a copy. Its different from git reset HEAD in the sense that the staging 
  area is removed of the file which will be reflected in the next commit in effect deleing the file.
```

- *git mv* :  change an existing file path and stage the move 
 > git rm --cached orig; mv orig new; git add new

- *git stash* : add the working directory as well as the index to the stack and returns a clean directory. Save modified and staged changes
```sh
   git stash list --> list stack-order of stashed file changes
   git stash apply. --> this keeps in the stack by applying the changes back to the working directory
   git stash apply stash@{1}
   git stash list stash@{1}
   git stash -u --> also add the untracked files
   git stash -a --> also add ignored files
   git stash drop --> discard the changes from top of stash stack
   git stash pop --> write working from top of stash stack, this removes them from stash
```

- *git checkout* : switch to another branch and check it out into your working directory
```sh
git checkout -b branch --> create a new branch and checkout based on current branch
git checkout -b branch master --> checkout from master
git checkout -- <filename> --> latest file is updated from the HEAD

```

- *git config*
```sh
git config --global user.name “[firstname lastname]” --> set a name that is identifiable for credit when review version history
git config --global user.email “[valid-email]” --> set an email address that will be associated with each history marker
git config --global color.ui auto --> set automatic command line coloring for Git for easy reviewing
git config color.ui true --> use colorful git output
git config format.pretty oneline --> show log on just one line per commit
git config --list --> lists out all the config commands configured
git config --global core.excludesfile [file] --> system wide ignore patern for all local repositories
git config --global branch.autosetuprebase always
```

- *git fetch*  : get the latest changes from the alias
```sh
  git fetch --all --> A power move which fetches all registered remotes and their branches:
  git fetch alias --> fetch down all the branches from that Git remote 
  git fetch <remote> <branch> 
  git fetch --dry-run
```

 - *git status* : show modified files in working directory, staged for your next commit
 ```sh
 git status -s
 ```
 
 - *git show* : show any object in Git in human-readable format
 
 - *git rebase* : 
 ```sh
git rebase [<upstream>] [<branch>]  
 git rebase [branch] --> apply any commits of current branch ahead of specified one. It provides a linear commit history compared to the git pull and merge strategy.
  git rebase --onto master server client --> take changes on client not on server and rebase to master
 git rebase --onto new-parent old-parent
git rebase --onto master branch_one branch_two
git rebase --onto <new-parent> <old-parent> <branch>

 ```
 
 - *git bisect* :
```sh
git bisect start
git bisect good
git bisect bad
git bisect reset
```
- *git revert* : reverts a commit but adds this as a new commit
git revert HEAD --> reverts the last commit by reverting it as a new commit

- git cat-file -p HEAD
- git ls-tree HEAD
- git ls-files -s --> list files in staging with additional metadata

- *git clean*
git clean -f ---> hard delete the untracked files
git clean -n ---> show the untracked files going to be removed




#### Important references
 - [http://gitref.org/creating/#init](http://gitref.org/creating/#init)
 - [http://rogerdudler.github.io/git-guide/](http://rogerdudler.github.io/git-guide/)
 - [https://git-scm.com/blog](https://git-scm.com/blog)
 - [https://education.github.com/git-cheat-sheet-education.pdf](https://education.github.com/git-cheat-sheet-education.pdf)
