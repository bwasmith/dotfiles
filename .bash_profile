export EDITOR='vim'

eval "$(rbenv init -)"

alias gst="git status"
alias ant_build="ant -f javasrc/build.xml"
alias ssh_dev="ssh -i ~/.ssh/devstrategyblockscom.pem sblocks@dev.strategyblocks.com"
alias ssh_alpha="ssh -i ~/.ssh/devstrategyblockscom.pem ubuntu@alpha.strategyblocks.com"
alias ssh_app="ssh -i ~/.ssh/aws-app-sblocks.pem sblocks@23.23.182.83"
alias ssh_aus="ssh -i ~/.ssh/ausstrategyblockscom.pem sblocks@54.66.127.26"
alias ssh_sanity="ssh -i ~/.ssh/sanity.pem sblocks@13.55.245.141"
alias ssh_sanity_dup="ssh -i ~/.ssh/sanity.pem sblocks@52.65.31.14"
alias psql_start="pg_ctl -D /usr/local/var/postgres/data -l /usr/local/var/postgres/server.log start"
alias jruby_s="jruby -J-Xmx4096m -S"
alias short_path="export PS1=\"\\n\\W\\n\$\""
alias long_path="export PS1=\"\\n\\h:\\W \\u\\n\$ \""
alias start_sb_vm="vboxmanage startvm StrategyBlocks_local --type headless"
alias shutdown_sb_vm="vboxmanage controlvm StrategyBlocks_local poweroff"
alias ssh_sb_vm="ssh sblocks@10.100.1.141"
alias ll="ls -FGlAhp"
alias ls="ls -G"
alias ctags="`brew --prefix`/bin/ctags"
alias sb_db="psql -U postgres strategy_blocks"
alias sb_drop="dropdb -U postgres strategy_blocks"
alias sb_create="createdb -U postgres strategy_blocks"
alias git_prune="git remote prune origin --dry-run"
alias git_prune_y="git remote prune origin"


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


export PATH="/usr/local/opt/postgresql@9.4/bin:$PATH"
