setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'



export SYSTEMC=/home/julien/Softs/systemc-2.3.0
#export LD_LIBRARY_PATH=/home/julien/Softs/systemc-2.3.0/lib-linux64:/usr/lib/x86_64-linux-gnu



###############################################################################
### TERM
###############################################################################
TERM=screen-256color

# If not running interactively, do not do anything
#  https://wiki.archlinux.org/index.php/Tmux
[[ $- != *i* ]] && return
[[ -z "$TMUX" ]] && exec tmux


###############################################################################
### ALIASES
###############################################################################
alias rm='rm -i'   # to check if I really want to delete that file
alias rmf='rm -fv' # force a suppression but show elements deleted
alias cp='cp -v'   # verbose form of cp
alias mv='mv -v'   # verbose form of mv
# If I make this typo I'll have the list of all the files in the current 
# folder with their rights
alias l='ls -l'     
alias ll='ls -la'     
alias grep='grep --color=auto' # I want the colors!
alias ls='ls --color=auto'     # here as well
#alias emacs='emacs -nw'
alias tmux="TERM=screen-256color tmux"




###############################################################################
### PATH
###############################################################################
export PATH=/home/julien/Android/android-sdk-linux/platform-tools:$PATH



###############################################################################
### KEYBINDINGS
###############################################################################
# There is a problem with the key-bindings in tmux
if [[ -n $TMUX ]]; 
then
    bindkey "^[[4~" end-of-line;
    bindkey "^[[1~" beginning-of-line;
else
    bindkey "^[OF"  end-of-line;        # key end
    bindkey "^[OH"  beginning-of-line   # key beginning
fi
# To know the binding of key do the following combination in your terminal
# % cat -v
# then press the key for which you want to know the binding.
bindkey "^[[3~" delete-char        # key suppress




###############################################################################
### PROMPTS
###############################################################################
# Loading the colors
autoload -U colors && colors
# What the left prompt shows:
# %~: the current directory (inside brackets)
# %n: the username
PS1="%{${fg[cyan]}%}-%n-%% %{$reset_color%}"
RPROMPT="%{${fg[green]}%}[%~]%{$reset_color%}"
# The right prompt shows:
# %T: the current time with the format 'HH-MM' (24h style)
# %w: the date following the format 'Day-Number'
#RPROMPT="%{${fg[green]}%}|%T - %w|%{$reset_color%}" 
# When an input is needed the prompt will show '> '
PS2='> '



###############################################################################
### OPTIONS
###############################################################################
setopt NO_NOTIFY  # no notification of an ending job
setopt NO_HUP     # don't want to end my jobs when I exit my terminal
setopt NO_BEEP    # because no beep!
