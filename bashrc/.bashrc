#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias kubectl='sudo kubectl'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias s='source .venv/bin/activate && echo "Venv activated: $(pip -V)"'
alias code='code --enable-features=UseOzonePlatform,WaylandWindowDecorations --ozone-platform=wayland'
# alias learning='cd ~/github_repos/my_repositories/learning'

PS1='[\u@\h \W]\$ '

eval "$(starship init bash)"

# Created by `pipx` on 2025-01-23 19:24:57
export PATH="$PATH:/home/deepanshu/.local/bin"

export PATH="$PATH:/home/deepanshu/scripts"
export PATH="$PATH:/home/deepanshu/scripts/jetbrains"
export GOBIN=${GOBIN:-$(go env GOPATH)/bin}
. "$HOME/.cargo/env"





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
