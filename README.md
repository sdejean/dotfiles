sdejean's dotfiles
==================
This repo contains my personal config files for my most used *nix apps.

Using dotfiles
--------------
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

