# osgiliath
The Citadel of Stars - dotfiles


### Installation
GNU `stow` is uses symlinks to place these dotfiles in the appropriate directories

First install `stow`

```
brew install stow
sudo apt install stow
```

Next clone this repository into your `$HOME`

```
https://github.com/amanchokshi/osgiliath.git
cd osgiliath
```

Install the dotfiles with

```
source install.sh
```
Ignore any errors in this script, they result from a bug in `stow v2.3.1`

Install `neovim` plugings by opening nvim and running the command `:PlugInstall`

```
nvim
:PlugInstall
```


