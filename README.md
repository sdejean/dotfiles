sdejean's dotfiles
==================
This repo contains my personal config files for my most used *nix apps.

Using dotfiles
--------------
This project relies on the Homekeeper Python script by Min Huang:
 - https://github.com/retiman/homekeeper
 - https://pypi.python.org/pypi/homekeeper/3.2.0

### Installing Homekeeper

```
pip install homekeeper
```
**OR**
```
pip install --user homekeeper
```

Make sure that there is a ~/.homekeeper.json config in your home folder.

### vim dependencies

You will need to pull down the Vundle plugin manager:
https://github.com/VundleVim/Vundle.vim

```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/vundle
```

### tmux dependencies

You will need to download the Tmux Plugin Manager (TPM):
https://github.com/tmux-plugins/tpm

```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

Deprecated
----------

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

