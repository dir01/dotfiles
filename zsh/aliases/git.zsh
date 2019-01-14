alias 'gpul'='git pull origin $(git_current_branch)'
alias 'gpulr'='gpul --rebase'
alias 'gpus'='git push origin $(git_current_branch)'
alias 'glog'='git log'
alias 'gadd'='git add'
alias 'grm'='git rm'
alias 'gci'='git commit'
alias 'gcia'='git commit --amend'
alias 'gbr'='git branch'
alias 'gbrr'='git branch -r'
alias 'gmer'='git merge'
alias 'gdf'='git diff'
alias 'gdfc'='git diff --cached'
alias 'gsup'='git submodule update'
alias 'gsho'='git show'
alias 'gche'='git cherry-pick'
alias 'gref'='git reflog'
alias 'grev'='git revert'
alias 'gtagl'='git tag --list'
alias 'gfet'='git fetch'

alias 'greb'='git rebase'
alias 'grebi'='git rebase --interactive'
alias 'grebc'='git rebase --continue'
alias 'greba'='git rebase --abort'

alias 'gre'='git reset'
alias 'greh'='git reset --hard'

alias 'gst'='git stash'
alias 'gsta'='git stash -a -u'

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
