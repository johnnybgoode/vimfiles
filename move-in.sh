#!/usr/bin/env bash

ROOT_DIR="$(cd "$(dirname "$0")" &> /dev/null && pwd -P)"

# Install vim-plug
curl --create-dirs -o "$ROOT_DIR/vim/autoload/plug.vim" \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

exit 0
for file in $(ls "$ROOT_DIR" | grep -v "move-in"); do
  echo "Linking '$file'..."
  ln -ns "$ROOT_DIR/$file" "$HOME/.$file"
done
