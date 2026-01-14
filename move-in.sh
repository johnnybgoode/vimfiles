#!/usr/bin/env bash

ROOT_DIR="$(cd "$(dirname "$0")" &> /dev/null && pwd -P)"

#  vim-plug
if [ ! -e "$ROOT_DIR/vim/autoload/plug.vim" ]; then
  curl --create-dirs -o "$ROOT_DIR/vim/autoload/plug.vim" \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

FONT_DIR="$ROOT_DIR/fonts"
mkdir -p $FONT_DIR && cd $FONT_DIR

if [ -z "$(ls .)" ]; then
  git clone --depth=1 https://github.com/powerline/fonts.git .
fi

INSTALL_FONTS=("DroidSansMono" "Inconsolata" "Inconsolata-g" "RobotoMono" "SourceCodePro")
FONTS=$(IFS='|'; echo "${INSTALL_FONTS[*]}")

find . -maxdepth 1 | grep -v "\.$\|${FONTS//|/\|}\|install\.sh" | xargs rm -rf

./install.sh
cd .. && rm -rf fonts

exit 0
for file in $(ls "$ROOT_DIR" | grep -v "move-in"); do
  echo "Linking '$file'..."
  ln -ns "$ROOT_DIR/$file" "$HOME/.$file"
done
