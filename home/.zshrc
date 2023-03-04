# load git info
autoload -Uz vcs_info
precmd() { vcs_info }

# set up branch details
zstyle ':vcs_info:git:*' formats 'on %b '

setopt PROMPT_SUBST
PROMPT='%F{57}%n%f %F{75}%~%f %F{225}${vcs_info_msg_0_}%f 😎 '
