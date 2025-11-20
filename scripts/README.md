# Scripts

This repository contains a collection of scripts for various purposes.

## Directory Structure
```
.
├── README.md
├── alt_swticher.sh
├── docpload
├── dotpload
├── dring
├── github_repo_enter
├── gitunlock
├── gpush
├── jetbrains
│   ├── datagrip
│   ├── pycharm
│   ├── rustrover
│   ├── webstorm
│   └── writerside
├── labpload
├── learning
├── mkenter.sh
├── okay
├── old_scripts
│   └── bash
│       ├── docpload
│       ├── dotpload
│       ├── pload
│       ├── python_files
│       │   └── tree
│       │       └── tree.py
│       ├── tree
│       └── yt-search
├── pload
├── python_files
│   └── tree
│       └── tree.py
├── search
├── speed_net
├── tree
├── turn_off_screen
├── uptime.sh
├── wallpload
└── wip
    ├── schedule
    ├── search
    └── venv_activate
```

---

## alt_swticher.sh
This script provides a window switcher for the Hyprland window manager using `rofi`. It lists all open windows and allows you to focus them.

**Usage:**
```bash
./alt_swticher.sh
```
This script does not accept any command-line arguments.

---

## docpload
This script automates the process of backing up documents to a Git repository. It uses `rsync` to copy files from `~/Documents/vaults` to the `~/github_repos/my_repositories/docs` repository and then pushes the changes to the `main` branch.

**Usage:**
```bash
./docpload [c]
```
- If run without arguments, it commits with a default message (the current date and time).
- If run with the `c` argument, it will prompt you to enter a custom commit message.

---

## dotpload
This script automates the backup of dotfiles. It uses `rsync` to copy configuration files from `~/.config`, `~/.bashrc`, and `~/scripts` to the `~/github_repos/my_repositories/dotfiles` repository. It excludes several directories to avoid backing up sensitive or unnecessary data.

**Usage:**
```bash
./dotpload [c]
```
- If run without arguments, it commits with a default message (the current date and time).
- If run with the `c` argument, it will prompt you to enter a custom commit message.

---

## dring
A simple script that changes the current directory to `/home/deepanshu/dataring/` and starts a new shell session.

**Usage:**
```bash
./dring
```
This script does not accept any command-line arguments.

---

## github_repo_enter
This script provides a convenient way to navigate to your GitHub repositories. It prompts you to choose between your cloned repositories (`c`) and your own repositories (`m`) and then changes the directory accordingly.

**Usage:**
```bash
./github_repo_enter [c|m]
```
- If run without arguments, it will prompt you to choose a directory.
- `c`: Navigates to the `clones` directory.
- `m`: Navigates to the `my_repositories` directory.

---

## gitunlock
This Python script removes the `index.lock` file from the `.git` directory. This is useful when a Git process is interrupted and leaves the lock file behind, preventing further Git commands from running.

**Usage:**
```bash
./gitunlock
```
This script does not accept any command-line arguments.

---

## gpush
This script simplifies the process of pushing changes to a Git repository. It adds all files, prompts for a commit message, and then pushes to the `main` branch by default. You can also specify a different branch as an argument.

**Usage:**
```bash
./gpush [branch_name]
```
- If run without arguments, it pushes to the `main` branch.
- `[branch_name]`: The name of the branch to push to.

---

## labpload
This script automates the backup of your homelab configuration. It uses `rsync` to copy files from `~/homelab_setups` to the `~/github_repos/my_repositories/homelab-config` repository and then pushes the changes to the `main` branch.

**Usage:**
```bash
./labpload [c]
```
- If run without arguments, it commits with a default message (the current date and time).
- If run with the `c` argument, it will prompt you to enter a custom commit message.

---

## learning
This script is a shortcut to your learning projects. It changes the directory to `~/github_repos/my_repositories/learning/` and can also navigate to subdirectories for specific topics like web scraping or Rust.

**Usage:**
```bash
./learning [w|r]
```
- If run without arguments, it navigates to the `learning` directory.
- `w`: Navigates to the `webscrapping` subdirectory.
- `r`: Navigates to the `rust` subdirectory.

---

## mkenter.sh
This script creates a new directory and then immediately changes the current directory to the newly created one.

**Usage:**
```bash
./mkenter.sh [directory_name]
```
- If run without arguments, it will prompt you to enter a directory name.
- `[directory_name]`: The name of the directory to create.

---

## okay
A simple script that prints a friendly message to the console.

**Usage:**
```bash
./okay
```
This script does not accept any command-line arguments.

---

## pload
This script is a master script that runs `dotpload`, `docpload`, and `wallpload` in sequence. This allows you to back up all your configurations, documents, and wallpapers with a single command.

**Usage:**
```bash
./pload [c]
```
- If run without arguments, it commits with a default message (the current date and time) for each of the sub-scripts.
- If run with the `c` argument, it will prompt you to enter a custom commit message for each of the sub-scripts.

---

## search
This script allows you to search the web from the command line. It opens a new Chromium window with your search query. You can specify whether to search on Google or YouTube, and whether to use incognito mode.

**Usage:**
```bash
./search [options] [search_query]
```
- **Options:**
  - `i`: Opens the search in incognito mode.
  - `n`: Opens the search in a new window.
  - `g`: Searches on Google.
  - `y`: Searches on YouTube (default).
  - `fs`: Performs a focused search on a predefined list of websites.
  - `-h`: Displays a help message.

---

## speed_net
This script displays the current network traffic, showing the amount of data received (RX) and transmitted (TX). It is designed to be used with a status bar like i3blocks or Polybar.

**Usage:**
```bash
./speed_net
```
This script does not accept any command-line arguments.

---

## tree
This Python script provides a visual representation of the directory structure, similar to the `tree` command. It displays the files and directories in a tree-like format.

**Usage:**
```bash
./tree [directory]
```
- If run without arguments, it displays the tree for the current directory.
- `[directory]`: The directory to display the tree for.

---

## turn_off_screen
This script allows you to turn off your laptop or monitor screen using `hyprctl`. This is useful for saving power or for privacy.

**Usage:**
```bash
./turn_off_screen [l|m|monitor_name]
```
- If run without arguments, it will prompt you to choose a screen.
- `l`: Turns off the laptop screen (`eDP-1`).
- `m`: Turns off the monitor screen (`DP-1`).
- `[monitor_name]`: The name of the monitor to turn off.

---

## uptime.sh
This script displays the system uptime in a human-readable format.

**Usage:**
```bash
./uptime.sh
```
This script does not accept any command-line arguments.

---

## wallpload
This script automates the backup of your wallpapers. It uses `rsync` to copy images from `~/Pictures/wallpaper` to the `~/github_repos/my_repositories/wallpapers` repository and then pushes the changes to the `main` branch.

**Usage:**
```bash
./wallpload [c]
```
- If run without arguments, it commits with a default message (the current date and time).
- If run with the `c` argument, it will prompt you to enter a custom commit message.
