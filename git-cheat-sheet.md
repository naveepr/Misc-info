## [Git documentation link](http://gitref.org/basic/)
 Git commands
===============
  - git init
    > init the repository
  - git status -s
  - git cat-file -p HEAD
  - git ls-tree HEAD
  - git ls-files -s
  - git config --list
  - git diff
```sh
    git diff --> working dir vs HEAD
    git diff --cached --> staged changes vs HEAD
    git diff HEAD
```
  - git reset
```sh
  git reset or git reset HEAD --> the index is also changed to the stage in the previous commit
  git reset --soft --> the HEAD is only changed,
  git reset --hard --> everything including the working directory is changed.
```
  - git rm --> removes the file from the staging area as well as the working dir
```sh
  git rm --cached --> working dir has a copy. Its different from git reset HEAD in the sense that the staging 
  area is removed of the file which will be reflected in the next commit in effect deleing the file.
```
 - git mv --> git rm --cached orig; mv orig new; git add new
 - git stash --> add the working directory as well as the index to the stack and returns a clean directory
```sh
   git stash list
   git stash apply
   git stash apply stash@{1}
   git stash drop
   git stash pop
```
 - git branch --> list the branch you are currently in
```sh
   git branch branchname
   git branch -v --> see the last commit on each branch
   git checkout -b newbranch --> create a new branch and then start using it immediately
   git branch -d branchname --> delete a branch
   git push remote-name localbranch:remotebranch or git push remotename --delete branchname
```
 - git merge
```sh
   git diff is helpful
   git merge branchname
```
 - git log
```sh
   git log --oneline
   git log --oneline --graph
   git log --oneline erlang ^master --> commits in erlang not in master
```
 - git tag
```sh
   git tag -a v1.0 --> tag the current commit
   git tag -a v0.9 558151a --> tag a different commit 
   git log --oneline --decorate --graph
   git fetch origin --tags --> download tags ,by default the tags are not included
   git fetch <remote> tag <tag-name> --> give a needed tag
```
 - git remote
```sh
  git remote -v
  git remote add [alias] [url]
  git remote rm [alias]
  git remote rename [old-alias] [new-alias]
  git remote set-url --> update an existing remote URL
  git remote set-url --push origin url --> diff push url
```
 - git fetch alias
 - git merge [alias]/[branch]
 - git pull alias --> get fetch + git merge in this
 - git fetch --all
 - git push [alias] [branch]

#### Important references
 - [http://gitref.org/creating/#init](http://gitref.org/creating/#init)
 - [http://rogerdudler.github.io/git-guide/](http://rogerdudler.github.io/git-guide/)
 - [https://git-scm.com/blog](https://git-scm.com/blog)
 - [https://education.github.com/git-cheat-sheet-education.pdf](https://education.github.com/git-cheat-sheet-education.pdf)
