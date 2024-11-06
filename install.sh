#!/bin/bash
#do not run with root permission
#work still inprogress
DEST_DIR="$HOME"
CONF_DIR="$DEST_DIR/.config"
RC_DIR="zsh/oh-my-zsh/templates"

if [ -d "$CONF_DIR/zsh" ]; then
  rm -rf "$CONF_DIR/zsh"
fi
cp -r zsh/ $CONF_DIR/zsh &&

if [ -f "$DEST_DIR/.zshrc" ]; then
  rm -rf "$DEST_DIR/.zshrc"
fi
cp -r $RC_DIR/zshrc.zsh-template $DEST_DIR/.zshrc &&
ln -s $CONF_DIR/zsh/oh-my-zsh/config/.zcompdump $DEST_DIR

echo All Set  &&
exit
