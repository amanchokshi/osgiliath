# osgiliath
Dotfiles - The Citadel of Stars

------------------------
![osgiliath](docs/banner.jpg)

------------------------

### Installation
GNU `stow` is uses symlinks to place these dotfiles in the appropriate directories

First install `stow`

```
brew install stow
```

Next clone this repository into your `$HOME`

```
mkdir ~/.osgiliath
cd ~/.osgiliath
https://github.com/amanchokshi/osgiliath.git .
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

![plug-install](docs/plug-install.png)

### Notes

Virtual environments can be tough on python plugins. I create a `pyenv` virtualenv called `tools` where I install

```
pip install pynvim
pip install black
pip install flake8
pip install isort
pip install shellcheck
```


In my `init.vim` I tell `nvim` to uses the `tools` virtualenv as its python version

```
let g:python3_host_prog = expand("~/.pyenv/versions/tools/bin/python")
```

This works in ensuring that `nvim` can always find `pynvim` even in a virtualenv. Doing the same for other python
is more complex.

First, I create a directory `~/.nvim/bin` and add it to my path

```
export PATH="$HOME/.nvim/bin:$PATH"
```

Then, I link each python package in `tools` to `~/.nvim/bin` using symlinks

```
ln -s `pyenv which flake8` ~/.nvim/bin/flake8
ln -s `pyenv which black` ~/.nvim/bin/black
ln -s `pyenv which isort` ~/.nvim/bin/isort
ln -s `which shellcheck` ~/.nvim/bin/shellcheck
```

This adds the packages to my `PATH`, and somehow makes linting work in all virtualenvs
