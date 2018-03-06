# Use `hub` as our git wrapper:
#   http://defunkt.github.com/hub/
if test $(which hub)
then
  eval "$(hub alias -s)"
fi


alias gb="git branch"
alias gc="git commit -v"
alias gcam="git commit -am"
alias gcb='git copy-branch-name'
alias gcl="git clone"
alias gco='git checkout'
alias gd='git diff'
alias gl='git pull --prune'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gp="git push"
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias gst="git status"
