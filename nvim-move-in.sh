#!/usr/bin/env bash

brew install neovim

cd $HOME/.config/nvim

git clone --filter=blob:none https://github.com/folke/lazy.nvim.git ~/.config/nvim/lazy.nvim
