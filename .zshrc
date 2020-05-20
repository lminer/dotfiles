export ZSH="$HOME/.oh-my-zsh"
export PYTHONDONTWRITEBYTECODE=1

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
fpath+=("$ZSH/custom/pure")
autoload -U promptinit; promptinit
prompt pure

# Customize to your needs...
alias sep='conda activate separate'
alias clean_git='git fetch -p && for branch in `git branch -vv | grep ": gone]" | awk "{print $1}"`; do git branch -D $branch; done'
