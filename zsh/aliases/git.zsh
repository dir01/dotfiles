alias 'gpul'='git pull origin $(git_current_branch)'
alias 'gpus'='git push origin $(git_current_branch)'
alias 'glog'='git log'
alias 'gadd'='git add'
alias 'gci'='git commit'
alias 'gbr'='git branch'
alias 'gmer'='git merge'
alias 'gdf'='git diff'
alias 'gsup'='git submodule update'
alias 'gsho'='git show'
alias 'gche'='git cherry-pick'
alias 'grev'='git revert'
alias 'gtagl'='git tag --list'
alias 'gfet'='git fetch'

alias 'greb'='git rebase'
alias 'grebi'='git rebase --interactive'

alias 'gre'='git reset'
alias 'greh'='git reset --hard'

alias 'gst'='git stash'
alias 'gstal'='git stash list'
function gstshow() {
   git show "stash@{$1}"
}

function git_status_or_command() {
  if [ -z "$1" ]
  then
    git status
  else
    git $*
  fi
}
alias 'g'='git_status_or_command'

function git_current_branch() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo ${ref#refs/heads/}
}
