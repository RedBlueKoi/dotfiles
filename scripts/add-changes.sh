#!/bin/sh

echo "Adding changes to the repo folders"
# rsync -av ~/.config/test/ ~/projects/personal/dotfiles/test/
#
rsync -av ~/.config/nvim/ ~/projects/personal/dotfiles/nvim/
