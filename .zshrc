export HOME="/home/lminer"
export ZSH="$HOME/.oh-my-zsh"
export NODE_MODULES="/usr/local/lib/node_modules"

ZSH_THEME=""

DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(""$HOME/anaconda3/bin/conda"" 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "$HOME/anaconda3/etc/profile.d/conda.sh" ]; then
        . "$HOME/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="$HOME/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# User configuration
fpath+=("$NODE_MODULES/pure-prompt/functions")
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
alias tensor_local2='ssh -A lminer@10.10.2.245 -p 22'
alias clean_git='git fetch -p && for branch in `git branch -vv | grep ": gone]" | awk "{print $1}"`; do git branch -D $branch; done'
alias vim='nvim'

# Credentials for accessing buckets
#export GOOGLE_APPLICATION_CREDENTIALS="$HOME/tunebend-separate-d8a951aecf04.json"
# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/google-cloud-sdk/path.zsh.inc" ]; then . "$HOME/google-cloud-sdk/path.zsh.inc"; fi

# The next line enables shell command completion for gcloud.
if [ -f "$HOME/google-cloud-sdk/completion.zsh.inc" ]; then . "$HOME/google-cloud-sdk/completion.zsh.inc"; fi
