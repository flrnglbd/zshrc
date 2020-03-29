# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/flo/.oh-my-zsh"
# export PATH="/anaconda3/bin:$PATH"
export DEV="/Users/flo/dev/"


# DDPC
# export SPARK_HOME="/Users/flo/UT/DISTRIBUTED-DATA-PROCESSING-CLOUD/spark-2.3.2-bin-hadoop2.7"
# export PIG_HOME="/Users/flo/Documents/UT/DISTRIBUTED-DATA-PROCESSING-CLOUD/pig/pig-0.17.0"
# export PATH="/Users/flo/Documents/UT/DISTRIBUTED-DATA-PROCESSING-CLOUD/pig/pig-0.17.0/bin:$PATH"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="dracula"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    virtualenv
    tmux
    mix
    osx
    k
    fzf
    vi-mode
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
export EDITOR='vim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
    #


# ZSH
alias zshreload="source ~/.zshrc && echo '**zshrc reload**'"
alias zshrc="vim ~/.zshrc && zshreload"

###########
# ALIAS ###
###########
alias c="clear"
alias l="ls"
alias ll="ls -alh"
alias lls="ls -tralh"
alias mkdir="mkdir -p"
alias rm="rm -i"
alias cp="cp -p"
alias mv="mv -i"
alias du="du -h"

# VIM
alias vimrc="vim ~/.vimrc"
alias v="vim"
alias cleanvim="find ~/.vimtmp/ -type f -mtime +30 -exec rm -f {} \;"
export VIM_HOME="$HOME/.vim"


alias gad="git add"
alias gst="git status"

alias copy="pbcopy"

# PYTHON
alias python="python -B"
alias sd="source deactivate"
alias sa="source activate"
# alias cl="conda-env list"

alias h="cat ~/.zshrc | grep alias"
alias pg="ping google.com"

## SSH CONNECTION
# alias rocket='ssh guilbaud@rocket.hpc.ut.ee'

## NNN
export NNN_TMPFILE="/tmp/nnn"

n()
{
    nnn "$@"

    if [ -f $NNN_TMPFILE ]; then
        . $NNN_TMPFILE
        rm -f $NNN_TMPFILE
    fi
}

# GIT
alias gst="git status"
alias gad="git add"
alias gco="git commit -m '${$(echo $(git_prompt_info) |  cut -d'%' -f 5 | cut -d'/' -f2):0:6} - "
alias gdiff="git diff"
alias glog="git log"
alias gpush="git push -u origin ${$(echo $(git_prompt_info) |  cut -d'%' -f 5):1}"

# VAGRANT
alias vup="vagrant up"
alias vhalt="vagrant halt"
alias vssh="vagrant ssh"

# DOCKER
alias dps="docker ps"
alias drm="docker rm"
alias drmi="docker rmi"
alias dimg="docker images"
alias dlog="docker logs"

# DEV
alias dev="cd $DEV"

ctags=/usr/local/bin/ctags

## asdf ##
export LDFLAGS="-L/usr/local/opt/curl/lib"
export CPPFLAGS="-I/usr/local/opt/curl/include"

. /usr/local/Cellar/asdf/0.7.7/asdf.sh
. /usr/local/Cellar/asdf/0.7.7/etc/bash_completion.d/asdf.bash
. ~/.asdf/plugins/java/set-java-home.sh

if type brew &>/dev/null; then
      FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'

source <(stern --completion=zsh)

# Feed the output of fd into fzf
# fd --type f | fzf

# Setting fd as the default source for fzf
export FZF_DEFAULT_COMMAND='fd --type f'

# Now fzf (w/o pipe) will use fd instead of find
# fzf

# To apply the command to CTRL-T as well
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

alias tmux="TERM=screen-256color-bce tmux"
