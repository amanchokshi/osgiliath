# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/amanchokshi/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="spaceship"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git
	mosh
	tmux
	vi-mode
	autojump
	zsh-syntax-highlighting
	zsh-autosuggestions
	)

ZSH_DISABLE_COMPFIX="true"

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"


# Set terminal window title to machine name: osgiliath
ZSH_THEME_TERM_TITLE_IDLE="%m"


# Remove underscores from syntax highlight plugin
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[pathi_prefix]=none


SPACESHIP_PROMPT_ORDER=(
  venv          # virtualenv section
  pyenv         # Pyenv section
  conda         # conda virtualenv section
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  exec_time     # Execution time
  line_sep      # Line break
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)

# No newline before the promp
SPACESHIP_PROMPT_ADD_NEWLINE=false

# Promt cursor character stuff
SPACESHIP_CHAR_SUFFIX=" "
SPACESHIP_CHAR_SYMBOL="❯"
SPACESHIP_CHAR_SYMBOL_ROOT="❯"
SPACESHIP_CHAR_SYMBOL_SECONDARY="❯"
SPACESHIP_CHAR_COLOR_SUCCESS=white

# Username etc
SPACESHIP_USER_SHOW=always
SPACESHIP_USER_PREFIX=""
SPACESHIP_USER_SUFFIX=" "
SPACESHIP_USER_COLOR=green
SPACESHIP_USER_COLOR_ROOT=green

# Directory stuff
SPACESHIP_DIR_PREFIX="» "
SPACESHIP_DIR_TRUNC=1
SPACESHIP_DIR_TRUNC_REPO=false
SPACESHIP_DIR_COLOR=202

# Git stuff
SPACESHIP_GIT_PREFIX="» "
SPACESHIP_GIT_SYMBOL=""
SPACESHIP_GIT_BRANCH_PREFIX=""
SPACESHIP_GIT_BRANCH_COLOR=blue
SPACESHIP_GIT_STATUS_PREFIX="["
SPACESHIP_GIT_STATUS_COLOR=blue
SPACESHIP_GIT_STATUS_DELETED="x"

# vi-mode
PACESHIP_VI_MODE_PREFIX=""
SPACESHIP_VI_MODE_SUFFIX=""
SPACESHIP_VI_MODE_INSERT=""
SPACESHIP_VI_MODE_NORMAL="❯"

# Venv stuff
SPACESHIP_VENV_SHOW=false

# Pyenv stuff
SPACESHIP_PYENV_SHOW=true
SPACESHIP_PYENV_PREFIX=""
SPACESHIP_PYENV_SUFFIX=" » "
SPACESHIP_PYENV_SYMBOL="༄ "
SPACESHIP_PYENV_COLOR=blue

# Execution time
SPACESHIP_EXEC_TIME_PREFIX=""
SPACESHIP_EXEC_TIME_COLOR=yellow
SPACESHIP_EXEC_TIME_ELAPSED=60


# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"


# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# TMUX brew stuff
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"

# Pyenv brew stuff
export LDFLAGS="-L/usr/local/opt/readline/lib"
export CPPFLAGS="-I/usr/local/opt/readline/include"
export PKG_CONFIG_PATH="/usr/local/opt/readline/lib/pkgconfig"
export LDFLAGS="-L/usr/local/opt/sqlite/lib"
export CPPFLAGS="-I/usr/local/opt/sqlite/include"
export LDFLAGS="-L/usr/local/opt/zlib/lib"
export CPPFLAGS="-I/usr/local/opt/zlib/include"
export PKG_CONFIG_PATH="/usr/local/opt/sqlite/lib/pkgconfig"
export PKG_CONFIG_PATH="/usr/local/opt/zlib/lib/pkgconfig"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"


# Disable pyenv virtuelenv prompt
export PYENV_VIRTUALENV_DISABLE_PROMPT=1

# autojump plugin
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# nvim aliases
alias v=nvim

# Python aliases
alias p=python
alias ip=ipython

# gotop
alias gtop=gotop

# Pyenv is the master of python paths
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# Vim with virtual envs
# https://vi.stackexchange.com/questions/7644/use-vim-with-virtualenv/7654#7654
if [[ -n $VIRTUAL_ENV && -e "${VIRTUAL_ENV}/bin/activate" ]]; then
  source "${VIRTUAL_ENV}/bin/activate"
fi

# dir on path where linting python packages are symlinked
# Makes vim ALE work in all venvs
export PATH="$HOME/.nvim/bin:$PATH"

# Alacritty shell completions
# https://github.com/alacritty/alacritty/blob/master/INSTALL.md
fpath+=${ZDOTDIR:-~}/.zsh_functions

# Node brew stuff
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"
export LDFLAGS="-L/usr/local/opt/icu4c/lib"
export CPPFLAGS="-I/usr/local/opt/icu4c/include"
export PKG_CONFIG_PATH="/usr/local/opt/icu4c/lib/pkgconfig"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# sshfs mount
alias ozstar_sshfs="sshfs -o volname=Ozstar ozstar:/fred/oz048/achokshi ~/Ozstar/"
alias ucalegon_sshfs="sshfs -o volname=Ucalegon ucalegon:/media/achokshi/satellites/ ~/Ucalegon/"

# bat theme
export BAT_THEME="gruvbox"
