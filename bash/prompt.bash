# Prompt Config

  # Output active git branch.
  function parse_git_branch {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
  }

  # Build prompt
  function prompt {
    local   RED="\[\033[0;31m\]"
    local   LIGHT_RED="\[\033[1;31m\]"
    local   CHAR="♥"
    local   BLUE="\[\e[0;49;34m\]"
    local   GREEN='\[\e[0;32m\]'
    local   YELLOW='\[\e[0;33m\]'
    local   PURPLE='\[\e[0;35m\]'
    local   CYAN='\[\e[0;36m\]'
    local   WHITE='\[\e[0;37m\]'
    local   RESET='\[\e[0m\]'

    # ♥ ☆ - Keeping some cool ASCII Characters for reference

    #flatiron default
    # PS1="\[\e]2;\u@\h\a[\[\e[37;44;1m\]\t\[\e[0m\]]$RED\$(parse_git_branch) \[\e[32m\]\W\[\e[0m\]\n\[\e[0;31m\]$BLUE//$RED $CHAR \[\e[0m\]"
    PS1="$PURPLE\u\h$YELLOW\$(parse_git_branch) $GREEN\W\$RESET\n\[\e[0;31m\]$CYAN// 🍦  $RESET"
    PS2='> '
    PS4='+ '
    }
  prompt

