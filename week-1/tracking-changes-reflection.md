# Tracking Changes Reflection

## 1.5 Tracking Changes

How does tracking and adding changes make developers' lives easier?

Tracking and adding changes make a developer's life easier by allowing them to build on pre-existing work without saving that work. This means that they can always ensure the master version of their repository is in working condition and can go back to previous versions if the latest version (the Head) isn't working. Tracking changes also makes it much easier to work with teams on a single repository.

What is a commit?

Committing is like hitting the save button.

What are the best practices for commit messages?

Best practices include:
- Using the imperative verb tense
- Starting with a short sentence summarizing the commit followed by a longer paragraph with details
- Actually describing what the commit does, why you made the choices you made, and how it will add to the repository.

What does the HEAD^ argument mean?

- The HEAD^ argument refers to the version you were working on just before the version you currently sit in.

What are the 3 stages of a git change and how do you move a file from one stage to the other?

- The first stage is adding a change to the branch which is done using git add "file name" (I follow the instructions provided by git status)
- The second stage is committing the change (done using git commit -m "commit message")
- The final stage is merging the master file with your branch (that has the committed changes) and pushing this to GitHub (where you pull it in and delete the branch). You then would also need to update the master on your local server (I do this by pulling from the origin master in GitHub but it can also be done by merging your branch with the master or by fetching then merging your origin master with your master) and then again deleting the branch.

Write a handy cheatsheet of the commands you need to commit your changes?

- git pull origin
- git status
- git log
- git checkout -b name-of-branch
- git add "file name"
- git subl "file name" (and save in file)
- git commit -m "commit message"
- git merge master
- git push origin
- git pull origin master (or git fetch origin master and git merge origin/master while in your master)

What is a pull request and how do you create and merge one?

The pull request can be used to pull in the most up-to-date version of your repository on github. You can pull and merge with the simple command git pull origin master OR git fetch origin master then git merge origin/master with your local server's master.

Why are pull requests preferred when working with teams?

Pull requests are preferred because then teammates can see changes coming in and understand how those changes will impact the entire repository and their work in it.