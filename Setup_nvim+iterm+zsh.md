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
 
 - Install powelevel9K [powerlevel9k](https://medium.com/@alex285/get-powerlevel9k-the-most-cool-linux-shell-ever-1c38516b0caa)
 ```sh
 git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
 ```
 
 - Copy the ~/.zshrc from [.zshrc](https://github.com/naveepr/dotfiles/blob/main/.zshrc). 
 Also more documentation on the inside content can be found in [zshrc content](https://callstack.com/blog/supercharge-your-terminal-with-zsh/)
 
 - Install the plugins needed in zshrc using oh_my_zsh. 
 
 - Install vim-plugin manager for installing neovim plugins
 ```sh
  curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
 ```
 
 - Run plugInstall inside init.vim to install the plugins. The dependencies or errors needed to be resolved by installing them.
 
 
