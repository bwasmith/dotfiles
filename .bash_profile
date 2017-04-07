export EDITOR='vim'

eval "$(rbenv init -)"

alias gst="git status"
alias ant_build="ant -f javasrc/build.xml"
alias ssh_dev="ssh -i ~/.ssh/devstrategyblockscom.pem sblocks@dev.strategyblocks.com"
alias ssh_alpha="ssh -i ~/.ssh/devstrategyblockscom.pem sblocks@alpha.strategyblocks.com"
alias ssh_app="ssh -i ~/.ssh/aws-app-sblocks.pem sblocks@23.23.182.83"
alias ssh_aus="ssh -i ~/.ssh/ausstrategyblockscom.pem sblocks@54.66.127.26"
alias ssh_sanity="ssh -i ~/.ssh/sanity.pem sblocks@13.55.245.141"
alias ssh_sanity_dup="ssh -i ~/.ssh/sanity.pem sblocks@52.63.93.9"
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


#long_path
PS1=$'\[\033[0;36m\]\xe2\x97\x8e\[\033[m\] \u@\h:\w \n\$ '
	
source ~/.iterm2_shell_integration.`basename $SHELL`

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

export PATH="/usr/local/opt/postgresql@9.4/bin:$PATH"
