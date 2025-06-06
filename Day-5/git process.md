PS D:\Cognizant\git-task> git init
Initialized empty Git repository in D:/Cognizant/git-task/.git/
PS D:\Cognizant\git-task> echo "initial content" > feature.txt
PS D:\Cognizant\git-task> git add feature.txt
PS D:\Cognizant\git-task> git commit -m "first commit"
[main (root-commit) 7d6cecf] first commit
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 feature.txt
PS D:\Cognizant\git-task> git branch -M main
PS D:\Cognizant\git-task> git remote add origin https://github.com/jaanu-1407/git-task.git
PS D:\Cognizant\git-task> git push -u origin main
Enumerating objects: 3, done.
Counting objects: 100% (3/3), done.
Writing objects: 100% (3/3), 242 bytes | 121.00 KiB/s, done.
Total 3 (delta 0), reused 0 (delta 0), pack-reused 0 (from 0)
To https://github.com/jaanu-1407/git-task.git
 * [new branch]      main -> main
branch 'main' set up to track 'origin/main'.
PS D:\Cognizant\git-task> git checkout -b feature-branch
Switched to a new branch 'feature-branch'
PS D:\Cognizant\git-task> echo "added new feature to feature-branch" >> feature.txt
PS D:\Cognizant\git-task> git add feature.txt
PS D:\Cognizant\git-task> git commit -m "added new feature"
[feature-branch e811161] added new feature
 1 file changed, 0 insertions(+), 0 deletions(-)
PS D:\Cognizant\git-task> git checkout main
Switched to branch 'main'
Your branch is up to date with 'origin/main'.
PS D:\Cognizant\git-task> echo "conflicting change from main branch" >> feature.txt
PS D:\Cognizant\git-task> git add feature.txt
PS D:\Cognizant\git-task> git commit -m "conflicting change on main branch"
[main 08dbeb1] conflicting change on main branch
 1 file changed, 0 insertions(+), 0 deletions(-)
PS D:\Cognizant\git-task> git merge feature-branch
warning: Cannot merge binary files: feature.txt (HEAD vs. feature-branch)
Auto-merging feature.txt
CONFLICT (content): Merge conflict in feature.txt
Automatic merge failed; fix conflicts and then commit the result.
PS D:\Cognizant\git-task> git add feature.txt
PS D:\Cognizant\git-task> git commit -m "resolved merge conflicts" 
[main a080e6a] resolved merge conflicts
PS D:\Cognizant\git-task> git push origin main
Enumerating objects: 9, done.
Counting objects: 100% (9/9), done.
Delta compression using up to 4 threads
Compressing objects: 100% (5/5), done.
Writing objects: 100% (7/7), 694 bytes | 138.00 KiB/s, done.
Total 7 (delta 2), reused 0 (delta 0), pack-reused 0 (from 0)
remote: Resolving deltas: 100% (2/2), done.
To https://github.com/jaanu-1407/git-task.git
   7d6cecf..a080e6a  main -> main
PS D:\Cognizant\git-task> git diff HEAD~1 HEAD
PS D:\Cognizant\git-task> echo "Temporary changes" > temp.txt
PS D:\Cognizant\git-task> git add temp.txt
PS D:\Cognizant\git-task> git stash
Saved working directory and index state WIP on main: a080e6a resolved merge conflicts
PS D:\Cognizant\git-task> git stash list
stash@{0}: WIP on main: a080e6a resolved merge conflicts
PS D:\Cognizant\git-task> git stash pop
On branch main
Your branch is up to date with 'origin/main'.

Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        new file:   temp.txt

Dropped refs/stash@{0} (2ad7f8c202b825eb3925dcb74b8da18122370d51)
PS D:\Cognizant\git-task> echo "another change" > another.txt
PS D:\Cognizant\git-task> git stash
Saved working directory and index state WIP on main: a080e6a resolved merge conflicts
PS D:\Cognizant\git-task> git stash list
stash@{0}: WIP on main: a080e6a resolved merge conflicts
PS D:\Cognizant\git-task> git stash apply stash@{1}
error: unknown switch `e'
usage: git stash apply [--index] [-q | --quiet] [<stash>]

    -q, --[no-]quiet      be quiet, only report errors
    --[no-]index          attempt to recreate the index

PS D:\Cognizant\git-task> git stash clear
PS D:\Cognizant\git-task> ls


    Directory: D:\Cognizant\git-task


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----          6/6/2025   5:51 PM             34 another.txt
-a----          6/6/2025   5:43 PM            110 feature.txt


PS D:\Cognizant\git-task> git status
On branch main
Your branch is up to date with 'origin/main'.

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        another.txt

nothing added to commit but untracked files present (use "git add" to track)
PS D:\Cognizant\git-task> 