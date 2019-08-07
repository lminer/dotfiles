# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/lukeminer/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME=""

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

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  zsh-z
)

source $ZSH/oh-my-zsh.sh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/lukeminer/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/lukeminer/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/lukeminer/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/lukeminer/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# User configuration
fpath+=('/usr/local/lib/node_modules/pure-prompt/functions')
autoload -U promptinit; promptinit
prompt pure

# Customize to your needs...
alias sep='conda activate separate'
alias tpu="gcloud compute ssh --zone us-central1-b instance-1 --ssh-flag='-A'"
alias gpu="gcloud compute ssh --zone us-central1-b gpu-2 --ssh-flag='-A'"
alias gpu_tunnel="gcloud compute ssh --zone us-central1-b gpu-2 -- -N -p 22 -L 127.0.0.1:9003:localhost:8888"
alias tensor1='ssh -A lminer@192.195.82.152 -p 836'
alias tensor2='ssh -A lminer@192.195.82.152 -p 849'
alias tensor_local1='ssh -A lminer@10.10.2.159 -p 22'
alias vlc='/Applications/VLC.app/Contents/MacOS/VLC'
alias tensor_local2='ssh -A lminer@10.10.2.245 -p 22'
alias rstudio_server='/Applications/Google\ Chrome\ Canary.app/Contents/MacOS/Google\ Chrome\ Canary --app=http://localhost:9000'

# Credentials for accessing buckets
#export GOOGLE_APPLICATION_CREDENTIALS="/Users/lukeminer/tunebend-separate-d8a951aecf04.json"
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/lukeminer/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/lukeminer/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/lukeminer/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/lukeminer/google-cloud-sdk/completion.zsh.inc'; fi
