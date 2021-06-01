
# PATH
# =====================
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

# NODE_PATH
export NODE_PATH="/usr/local/lib/node_modules:$NODE_PATH"

# MYSQL Path
export MYSQL_PATH="/usr/local/mysql/bin"

# The USR_PATHS variable will just store all relevant /usr paths for easier usage
# Each path is seperate via a : and we always use absolute paths.
export USR_PATHS="/usr/local:/usr/local/bin:/usr/local/sbin:/usr/bin"

export ELIXIR_PATH="/usr/local/bin/elixir/bin"
export PYTHON_PATH="$HOME/Library/Python/2.7/bin:$HOME/Library/Python/3.6/bin"

# We build our final PATH by combining the variables defined above
# along with any previous values in the PATH variable.
export PATH="$ELIXIR_PATH:$PYTHON_PATH:$MYSQL_PATH:$USR_PATHS:$PATH"
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# add custom scripts
export PATH=$HOME/bin:$PATH
export PATH=$DOTFILES/bin:$PATH
