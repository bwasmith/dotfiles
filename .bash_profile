export EDITOR='vim'

eval "$(rbenv init -)"

alias gst="git status"
alias short_path="export PS1=\"\\n\\W\\n\$\""
alias long_path="export PS1=\"\\n\\h:\\W \\u\\n\$ \""
alias ll="ls -FGlAhp"
alias ls="ls -G"
alias ctags="`brew --prefix`/bin/ctags"
alias git_prune="git remote prune origin --dry-run"
alias git_prune_y="git remote prune origin"
alias ssh_petra="ssh bwasmith@70.187.141.95 -p 622"

# tmux reload -> :source-file ~/.tmux.conf

git_branch(){ git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ [\1]/'; }
circle(){ echo -e '\xe2\x97\x8e'; }
triangle(){ echo -e '\xe2\x96\xb6'; }
dashed_arrow(){	echo -e '\xe2\x9e\x9f'; }
right_prompt() { printf "%*s" $(( COLUMNS-1 )) "$(git_branch) $(date +%H:%M:%S)"; }

#https://wiki.archlinux.org/index.php/Bash/Prompt_customization
RESET="$(tput sgr0)"
GREEN="$(tput setaf 2)"
TEAL="$(tput setaf 6)"
D_GREEN="$(tput setaf 28)"
WHITE="$(tput setaf 15)"
GREY="$(tput setaf 245)"
trap 'tput sgr0' DEBUG


#PS1='${RESET}\[$(tput sc; right_prompt; tput rc)\]${TEAL}$(circle) ${RESET} \u ${D_GREEN}\w${RESET}\n  $(dashed_arrow)  '

PS1='${WHITE}$(tput sc; right_prompt; tput rc)${TEAL}$(circle) ${WHITE} \u ${D_GREEN}\w${WHITE}\n  $(dashed_arrow)  '
