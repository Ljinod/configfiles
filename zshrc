# -----------------------------------------------------------------------------
# -----------------------------------------------------------------------------
# Oh my zsh configuration
# -----------------------------------------------------------------------------
# -----------------------------------------------------------------------------

# Path to your oh-my-zsh installation
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"
ZSH_THEME="ljinod"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration


# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# -----------------------------------------------------------------------------
# -----------------------------------------------------------------------------
# Personal Configuration
# -----------------------------------------------------------------------------
# -----------------------------------------------------------------------------

###############################################################################
# EXPORT GLOBAL VARIABLES
###############################################################################
export EDITOR=vim
export PATH=$HOME/ArchLinux/els:$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"
export GIT_EDITOR=vim


###############################################################################
# ALIASES
###############################################################################
alias rm='rm -i'   # to check if I really want to delete that file
alias rmf='rm -fv' # force a suppression but show elements deleted
alias cp='cp -v'   # verbose form of cp
alias mv='mv -v'   # verbose form of mv
if [ -e $HOME/ArchLinux/els/els ];
then
    alias l='els -l --els-icons=fontawesome'
    alias ll='els -la --els-icons=fontawesome'
    alias lls='els --els-icons=fontawesome'
else
    alias l='ls -l --color=auto'
    alias ll='ls -al --color=auto'
fi
alias grep='grep --color=auto' # I want the colors!
alias ls='ls --color=auto'     # here as well
alias tmux="TERM=screen-256color tmux"


###############################################################################
### KEYBINDINGS
###############################################################################
# There is a problem with the key-bindings in tmux
if [[ -n $TMUX ]];
then
    # bindkey "^[[4~" end-of-line;
    # bindkey "^[[1~" beginning-of-line;

    # Arch Linux values:
    bindkey "^[[7~" beginning-of-line;
    bindkey "^[[8~" end-of-line;
else
    bindkey "^[OF"  end-of-line;        # key end
    bindkey "^[OH"  beginning-of-line   # key beginning
fi
# To know the binding of key do the following combination in your terminal
# % cat -v
# then press the key for which you want to know the binding.
bindkey "^[[3~" delete-char        # key suppress


###############################################################################
### OPTIONS
###############################################################################
setopt NO_NOTIFY  # no notification of an ending job
setopt NO_HUP     # don't want to end my jobs when I exit my terminal
setopt NO_BEEP    # because no beep!


###############################################################################
### TMUX
###############################################################################

# If not running interactively, do not do anything
#  https://wiki.archlinux.org/index.php/Tmux
# [[ $- != *i* ]] && return
# [[ -z "$TMUX" ]] && exec tmux
