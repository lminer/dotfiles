# dotfiles
```bash
sudo apt-get install nodejs npm golang-go rustc cargo
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
npm install --global pure-prompt --allow-root --unsafe-perm=true
```

# vim
# within vim
:PluginInstall!

# outside of vim
```bash
conda install libgcc
cd ~/.vim/bundle/YouCompleteMe && ./install.py --go-completer --java-completer --rust-completer --clang-completer
```
