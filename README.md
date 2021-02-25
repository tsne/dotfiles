# dotfiles

```shell
> mkdir -p $HOME/.cache/zsh
> sudo chmod -R 755 /usr/local/share/zsh

> ln -s $HOME/dotfiles/gitconfig $HOME/.gitconfig
> ln -s $HOME/dotfiles/vim $HOME/.vim
> ln -s $HOME/dotfiles/vimrc $HOME/.vimrc
> ln -s $HOME/dotfiles/zshrc $HOME/.zshrc
```

## ssh
```shell
> ssh-keygen -o -a 64 -t ed25519 -f ~/.ssh/id_ed25519 -C "tsne@example.com"
> echo "Host *\n  AddKeysToAgent yes\n  UseKeychain yes\n  IdentityFile ~/.ssh/id_ed25519" > $HOME/.ssh/config
> ssh-add -K ~/.ssh/id_ed25519
```

## vim
```shell
> cd vim/bundle
> git clone git@github.com:Shougo/unite.vim.git
> git clone git@github.com:Shougo/vimfiler.vim.git
> git clone git@github.com:fatih/vim-go.git
```
