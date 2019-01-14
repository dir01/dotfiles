aliases_root=$HOME/dotfiles/zsh/aliases
source $aliases_root/system.zsh
source $aliases_root/ubuntu.zsh
source $aliases_root/git.zsh
source $aliases_root/python.zsh
source $aliases_root/zsh.zsh
source $aliases_root/npm.zsh

alias 'bitch,'='sudo'
alias 's'='sudo zsh'
alias 'e'='editor'
alias 'ff-vacuum'='for dbase in *.sqlite; do sqlite3 $dbase "vacuum;"; done'
