## How to create a new environment with neovim + iterm2 + zsh

- Install either ubuntu or run in mac
- Install neovim
```sh
sudo apt-get update
sudo apt-get install neovim
sudo apt-get install python-dev python-pip python3-dev python3-pip
```
- Install zsh
```sh
sudo apt install zsh
```

- Install oh-my-zsh
```sh
 sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
 ```
 
 - The above step will create a new .zshrc as well as create ~/.oh-my-zsh. 

- Copy the ~/.zshrc from [.zshrc](https://github.com/naveepr/dotfiles/blob/main/.zshrc). 
 Also more documentation on the inside content can be found in [Supercharge your Terminal with Zsh
](https://callstack.com/blog/supercharge-your-terminal-with-zsh/)

 - Install powelevel9K [powerlevel9k](https://medium.com/@alex285/get-powerlevel9k-the-most-cool-linux-shell-ever-1c38516b0caa) or Install powerlevel10k [powerlevel10k](https://gist.github.com/kevin-smets/8568070). 
 ```sh
 git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
 p10k configure
 ```
 ```sh
 git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
 ```
 - Install a powerline font in iterm2 [powerline fonts](https://medium.com/@Clovis_app/configuration-of-a-beautiful-efficient-terminal-and-prompt-on-osx-in-7-minutes-827c29391961)
 
 - Install the plugins needed in zshrc using oh_my_zsh
 ```sh
 git clone https://github.com/zdharma/fast-syntax-highlighting.git \
  ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting
 ```
 
 - Install tmux plugin manager [tmux plugin manager](https://github.com/tmux-plugins/tpm)
 ```sh
 git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
 ```
 Copy the tmux.conf and do `tmux source ~/.tmux.conf`.
 
 Install plugin by doing `Prefix`+I.
 
 - Install vim-plugin manager for installing neovim plugins. [neovim install](https://www.linode.com/docs/guides/how-to-install-neovim-and-plugins-with-vim-plug/)

 ```sh
  curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
 ```
 
 - Run plugInstall inside init.vim to install the plugins. The dependencies or errors needed to be resolved by installing them.
 ```sh
 sudo apt install yarn
 sudo apt install npm
 sudo apt install node
 ```
 
 
