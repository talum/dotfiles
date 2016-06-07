
# PATH
# =====================
# NODE_PATH
export NODE_PATH="/usr/local/lib/node_modules:$NODE_PATH"

# MYSQL Path
export MYSQL_PATH="/usr/local/mysql/bin"
# The USR_PATHS variable will just store all relevant /usr paths for easier usage
# Each path is seperate via a : and we always use absolute paths.
export USR_PATHS="/usr/local:/usr/local/bin:/usr/local/sbin:/usr/bin"

# We build our final PATH by combining the variables defined above
# along with any previous values in the PATH variable.
export PATH="$MYSQL_PATH:$USR_PATHS:$PATH"

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

# RVM
  # Mandatory loading of RVM into the shell
  # This must be the last line of your bash_profile always
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*