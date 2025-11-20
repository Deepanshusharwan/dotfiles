#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# alias kubectl='sudo kubectl'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias s='source .venv/bin/activate && echo "Venv activated: $(pip -V)"'
alias code='code --enable-features=UseOzonePlatform,WaylandWindowDecorations --ozone-platform=wayland'
alias cdphone='cd "$(find /run/user/$UID/gvfs/ -maxdepth 1 -type d -name "mtp:*" | head -n 1)"'
# switches to the dir where the phone storage is mounted and cd into the first one
# alias learning='cd ~/github_repos/my_repositories/learning'

PS1='[\u@\h \W]\$ '

eval "$(starship init bash)"

# Created by `pipx` on 2025-01-23 19:24:57
export PATH="$PATH:/home/deepanshu/.local/bin"

export PATH="$PATH:/home/deepanshu/scripts"
export PATH="$PATH:/home/deepanshu/scripts/jetbrains"





# Created to use yazi using the y command and change the directory to where we exited yazi 
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}




export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/deepanshu/files/google-cloud-sdk/path.bash.inc' ]; then . '/home/deepanshu/files/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/deepanshu/files/google-cloud-sdk/completion.bash.inc' ]; then . '/home/deepanshu/files/google-cloud-sdk/completion.bash.inc'; fi
