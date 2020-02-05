# If you come from bash you might have to change your $PATH.
export PATH=$HOME/.bin:/usr/local/bin:$PATH

export TERM=xterm-256color

# Path to your oh-my-zsh installation.
export ZSH="/home/floriang/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
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
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
git
# vi-mode
# virtualenv
tmux
asdf
mix
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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#

###########
# ALIAS ###
###########
alias l="ls"
alias ll="ls -alh"
alias lls="ls -tralh"
alias mkdir="mkdir -p"
alias rm="rm -i"
alias cp="cp -p"
alias mv="mv -i"
alias du="du -h"

# alias grep="egrep -R"

# Config
# alias zshreload="source ~/.zshrc && echo '**zshrc reload**'"
alias zshrc="vim ~/.zshrc"

alias vimrc="vim ~/.vimrc"
alias i3config="vim ~/.config/i3/config"

# Copy to clipboard from command line
alias copy="xclip -selection clipboard"
alias wifi="nm-connection-editor"
# alias copy="pbcopy"

# VIM
export VIM_HOME="$HOME/.vim"
alias vimrc="vim ~/.vimrc"
alias v="vim"

# PYTHON
alias python="python -B"
alias sd="source deactivate"
alias sa="source activate"
alias cl="conda-env list"

alias pg="ping google.com"

# GIT
alias gad="git add"
alias gst="git status"
alias dif="git diff"
alias glog="git log"

# VAGRANT
alias vup="vagrant up"
alias vhalt="vagrant halt"
alias vssh="vagrant ssh"

# DEV
# alias dev="cd $DEV"

ctags=/usr/bin/ctags

# ASDF manager of language environment
. $HOME/.bin/asdf/asdf.sh
. $HOME/.bin/asdf/completions/asdf.bash
. $HOME/.asdf/plugins/java/set-java-home.sh

# KUBERNETES
alias kc="kubectl"

# Set keyboard layout & swap caps and escape
setxkbmap -option caps:swapescape
setxkbmap -layout us -variant mac

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

