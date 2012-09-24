alias 'g'='git status'
alias 'gpul'='git pull origin $(current_branch)'
alias 'gpus'='git push origin $(current_branch)'
alias 'gre'='git reset'
alias 'greh'='git reset --hard'
alias 'glog'='git log'
alias 'gadd'='git add'
alias 'greb'-'git rebase'
alias 'grebi'='git rebase --interactive'
alias 'gci'='git commit'
alias 'gmer'='git merge'
alias 'gst'='git stash'
alias 'gdf'='git diff'
function gbrco() { git branch $1; git checkout $1 }

function current_branch() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo ${ref#refs/heads/}
}
