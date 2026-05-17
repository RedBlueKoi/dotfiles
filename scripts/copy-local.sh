#!/bin/sh

echo "Removing local folders from .config"
rm -rf ~/.config/nvim
# rm -rf ~/.config/test

echo "Copying repo folders to the .config"
cp -R ../nvim ~/.config
# cp -R ../test ~/.config
