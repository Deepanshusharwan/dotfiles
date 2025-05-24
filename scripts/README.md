# File Tree Structure

```
├─ alt_swticher.sh
├─ docpload
├─ dotpload
├─ github_repo_enter
├─ gitunlock
├─ gpush.sh
├─ jetbrains
│   ├─ datagrip
│   ├─ pycharm
│   ├─ rustrover
│   ├─ webstorm
│   └─ writerside
├─ mkenter.sh
├─ okay
├─ old_scripts
│   ├─ bash
│   │   ├─ docpload
│   │   ├─ dotpload
│   │   ├─ pload
│   │   ├─ python_files
│   │   │   └─ tree
│   │   │       └─ tree.py
│   │   ├─ tree
│   │   └─ yt-search
│   └─ python
├─ pload
├─ python_files
│   └─ tree
│       └─ tree.py
├─ search
├─ tree
├─ uptime.sh
└─ wip
    ├─ schedule
    └─ venv_activate
Total directories: 9
Total files: 26
```

## Scripts

### 1. alt_swticher.sh -- this script makes a gui for switching between apps

### 2. docplod -- for syncing the Documents/vaults to the docs github repo in ~/github_repos/my_repositories//docs and then commitng and pushing the commits with the date and time as the commit message. It also has an option of customizing the commit message by passing the c option to it like this "docpload c"

### 3. dotpload -- for syncing the ~/Pictures/wallpaper/ , ~/scripts/ , ~/.config/ , ~/.bashrc file to the github repo in github_repos/my_repositories/dotfiles/ and then respective places and then uploading them in the respective folders and then commiting them with the current date and time as the commit message. the commit message can also be customized by passing the c option to this script like "dotpload c" and then it will prompt you for the commit message

### 4. github_repo_enter -- this script is used to enter the ~/github_repos/my_repositories/ or ~/github_repos/clones/ depending on what is chosen it can also be used by giving the repo we want to enter into as a command line argument 'm' for my_repositories and 'c' for clones

### 5. gitunlock -- this repo is used to delete the index.lock file in the .git dir

### 6. gpush.sh -- this scipt simply stages all the changed file and then after asking for a commit message commits and then pushes those commits to github

### 7. mkenter.sh -- this script asks for the name of the dir you want to create and then cd into it. Altenatively you can also pass the name of the dir as a command line argument if you want to be even faster

### 8. okay -- a fun lil script and also one of my first scripts that i made that responds with OKAYYYYYY! so what's next? whenever you type okay in the shell

### 9. pload -- runs both the docpload and the dotpload script normally without any command line arguments but if the 'c' option is given to it like 'pload c' then it runs both the scripts then it passes the c argument to both the scripts

### 10. search -- a script for searching the web checkout 'search -h' for all the details on all the options

### 11. tree -- gives a file tree structure for all the files in the current dir and all the subsequent sub directries.

### 12. uptime.sh -- a simple script for giving the output of the uptime command but making it more human readable
