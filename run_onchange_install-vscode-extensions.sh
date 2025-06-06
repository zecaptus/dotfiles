#!/bin/bash

if command -v code &> /dev/null; then
    VSCODE_CMD="code"
else
    VSCODE_CMD="/Applications/Visual Studio Code.app/Contents/Resources/app/bin/code"
fi

extensions=(
  "adpyke.codesnap"
  "exodiusstudios.comment-anchors"
  "dbaeumer.vscode-eslint"
  "eamodio.gitlens"
  "golang.go"
  "oderwat.indent-rainbow"
  "ms-vsliveshare.vsliveshare"
  "pkief.material-icon-theme"
  "esbenp.prettier-vscode"
  "bradlc.vscode-tailwindcss"
  "drcika.apc-extension"
  "enkia.tokyo-night"
  "yoavbls.pretty-ts-errors"
)

for extension in "${extensions[@]}"
do
  "$VSCODE_CMD" --install-extension "$extension"
done