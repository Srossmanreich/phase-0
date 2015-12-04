# Reflections Week 1

## 1.1 Think About Time Reflection

In looking through all the recommended articles / resources on time-management and productivity, I especially found myself drawn to two related productivity strategies: 1) Timeboxing (allocating a fixed amount of time for working on an activity before taking a break) and 2) the Pomodoro Technique (similar to Timeboxing save work/break pairs come in 25min/5min segments).

Personally I have used Timeboxing to improve my own productivity in the past (and do currently) without having known it was a common strategy (I have dubbed my timeboxing 'sprints' in my own head). But what I hadn't known anything about was all the research and studies around why Timeboxing / the Pomodoro Technique work and why the breaks taken as part of these strategies are so important. Because I have used this technique before and know it works well for me, I will engage it thoroughly throughout phase 0 by setting aside fixed intervals of time for working on phase 0 activities (probably matching fixed time intervals to the easy-medium-hard designations DBC staff link to the various activities).

One reason I have liked to timebox in the past is that I think often (not every time but often enough), after I've started one of my productivity 'sprints', suddenly (particularly when it comes to my writing) I'll enter flow (as described by some of the research linked to) and end up far exceeding the time allocation I had originally set. For me this is a positive thing and has led to mostly awesome breakthroughs in my work. I am excited to see if this also happens for me when I code.

Ultimately though, my overall plan for phase 0 is to get ahead of the work, looking at assignments the day they come out, and plan thoroughly. Fortunately, I have never been a procrastinator and expect my past strategies around productivity to continue to serve me in phase 0.

## 1.2 The Command Line Reflection

1. What is a shell? What is "bash?"

The shell is the user interface we use to run the command line and talk to our computer. Bash is the shell language we are currently using in our command line.

2. What was the most challenging for you in going through this material?

I worry that it will be difficult to remember how to use all these commands particularly if we don't use them in practice much throughout phase 0. It is easy to memorize and follow instructions, but much more difficult to apply learning.

3. Were you able to successfully use all of the commands?

I was able to successfully use all commands.

4. In your opinion, what are the most important commands and arguments to know?

I think help and man are the most important commands as if you are stuck they can show you what commands / arguments exist and how to use them, respectively. This will be very useful for getting comfortable with and learning the command line.

5. Can you remember what each of the following does of the top of your head? Write what each does.

pwd: shows you the current directory you are working in

ls: lists all the files and directories in the current directory you are in

mv: allows you to rename or move a file

cd: changes directory

../: lets you move back up one directory

touch: creates a new file

mkdir: creates a new directory

less: shows you whats in a file / document / output of a command in pages you can scroll through

rmdir: removes a directory

rm: removes a file / document

help: shows you all available commands built-into the shell

## 1.4 Forking and Cloning Reflection

1. If you were going to write instructions for a new person on how to create a new repo, fork a repo, and clone a repo, what would they be? Why would you fork a repository as opposed to create a new one?

If I was writing instructions for a new person on how to create a new repo, fork a repo, and clone a repo, I would direct them first to github. I would tell to hit the plus sign in the top right to create their repository. For forking, I would tell them to go to a repository they are exciting to work on, help with, or update and hit the fork button to bring a new branch just for them to their own github profile. To clone, I would tell them to copy the provided HTTP address from github, open their command line and travel to the directory they would like the clones repository to be added to, and then to type in the git clone <HTTP address> command.

I would fork a repository when I wanted to work / help with an existing repository rather than completely start a new repository from scratch.

2. What struggles did you have setting up git and GitHub? What did you learn in the process?

Ironically, the hardest part for me was simply downloading GitHub. The setup on their site did not lead me to the right link and I eventually had to google the right one. Honestly, I learned that GitHub is easier to use than I thought (and easier to link up with your local device than I thought), but I still am anxious about beginning to use it for our coding projects (I am sure we will get to that soon though!).

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