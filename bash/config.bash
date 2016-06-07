# Configurations
# =====================
  # GIT_MERGE_AUTO_EDIT
  # This variable configures git to not require a message when you merge.
  export GIT_MERGE_AUTOEDIT='no'

  # Editors
  # Tells your shell that when a program requires various editors, use sublime.
  # The -w flag tells your shell to wait until sublime exits
  export VISUAL="$EDITOR -w"
  export SVN_EDITOR="$EDITOR -w"
  export GIT_EDITOR="$EDITOR -w"
  export EDITOR="$EDITOR -w"

  # Case-Insensitive Auto Completion
  bind "set completion-ignore-case on"