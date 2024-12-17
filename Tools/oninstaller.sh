#!/bin/sh

# Repository Section
REPO="https://github.com/Nor-darkstar/EasyOMZ.git"
R_PATH="/var/tmp/EasyOMZ"
git clone $REPO $R_PATH &&
cd $R_PATH
# Paths Section
DEST_DIR="$HOME"
CONF_DIR="$DEST_DIR/.config"
RC_DIR="zsh/oh-my-zsh/templates"
PLUG_DIR="zsh/oh-my-zsh/plugins"
CST_DIR="zsh/oh-my-zsh/custom"

# Extraxtions
tar -xvf "Plugins/Plugins.tar.xz" -C $PLUG_DIR
tar -xvf "Plugins/Additional-plugins.tar.xz" -C $CST_DIR/plugins
tar -xvf "Themes/powerlevel10k.tar.xz" -C $CST_DIR/themes
tar -xvf "Fonts/MesloLGS NF.tar.xz" -C $DEST_DIR/.local/share/fonts
# Copy Pasting
if [ -d "$CONF_DIR/zsh" ]; then
  rm -rf "$CONF_DIR/zsh"
fi
  cp -r zsh/ $CONF_DIR/zsh
  echo ...Configuration Folder is Ready...
if [ -f "$DEST_DIR/.zshrc" ]; then
  rm -rf "$DEST_DIR/.zshrc"
fi
  cp -r $RC_DIR/zshrc.zsh-template $DEST_DIR/.zshrc
if [ ! -f "$DEST_DIR/.zcompdump" ]; then
  rm -rf "$DEST_DIR/.zcompdump"
fi  
  ln -s $CONF_DIR/zsh/oh-my-zsh/config/.zcompdump $DEST_DIR
  rm -rf $R_PATH
clear  
  echo ...All Set... 
  echo ...close and relaunch the terminal for further configurations...
exit
