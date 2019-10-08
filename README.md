sdejean's dotfiles
==================
This repo contains my personal config files for my most used Linux/Unix apps.
The project relies on the Homekeeper Python script by Min Huang:
 - https://github.com/retiman/homekeeper
 - https://pypi.python.org/pypi/homekeeper/3.2.0

## Using dotfiles

To get going with the dotfiles repo we need to do a few things:
1. Install homekeeper
2. Pull down the Vim plugin manager
3. Pull down the Tmux plugin manager
4. Pull down Oh-My-Zsh

### Installing Homekeeper

```
pip install homekeeper
```
**OR**
```
pip install --user homekeeper
```

Make sure that there is a ~/.homekeeper.json config in your home folder. Copy
the base/.homekeeper.json.skel for a starter template and customize for the 
system you are on now. Then, run homekeeper:

```
homekeeper link
```

### vim dependencies

You will need to pull down the Vundle plugin manager:
https://github.com/VundleVim/Vundle.vim

```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/vundle
```

#### neovim dependencies

```
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

### tmux dependencies

You will need to download the Tmux Plugin Manager (TPM):
https://github.com/tmux-plugins/tpm

```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

### zsh dependencies

Also using Robby Russell's "Oh-My-Zsh" plugin for shell extras:
https://github.com/robbyrussell/oh-my-zsh

```
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```
**OR**
```
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
```

## Extra package

### Go

```
# set GOPATH
export GOPATH="${HOME}/work/go"
mkdir -p $GOPATH
GO111MODULE=on go get golang.org/x/tools/gopls@latest
```

### Python

```
# First, a new version of pip and setuptools
pip install --upgrade pip setuptools
# Then the rest
pip install --upgrade ansible-lint
pip install --upgrade jedi pyflakes pylama pylint
pip install --upgrade virtualenv virtualenv-clone virtualenvwrapper
```

### Ruby

```
gem install pry
gem install puppet-lint
```

#### rbenv

If rbenv is not already installed (see https://github.com/rbenv/rbenv for more
info):
```
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
# Dynamic bash extensions for rbenv, not necessary and it's ok if it fails
cd ~/.rbenv && src/configure && make -C src
```

## Deprecated

There is a bash script called deploy-dotfiles within the root of this project
directory.  The script will backup and deploy config files for the following:
* bash
* vim

The deploy script also sets up important scaffolding and required submodules:
* solarized
* powerline
* vim-pathogen

Most other files within this repo DO NOT have the "." pre-pended to the file
name, so you will have to do that yourself when copying them into ${HOME}.

For example:
    ~: cp -v ~/src/dotfiles/tmux.conf ~/.tmux.conf

