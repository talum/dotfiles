# Rails

alias rc='rails c'
alias rs='rails s'
alias migrate='rake db:migrate && rake db:migrate RAILS_ENV=test'

# FS

alias l='ls -a'
alias desktop='cd /Users/$USER/Desktop/$@'
alias ironboard='cd /Users/$USER/ironboard'

#Pubkey

alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"
