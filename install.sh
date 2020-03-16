#!/bin/sh

# Get dotfiles path from current script path
# (this will behave unexpectedly if sourced instead of run directly)
df_path="$(dirname -- "$0")/home"

echo "Copying dotfiles to current user home..."
cp -fR ${df_path}/. ~
ln ~/.Xdefaults ~/.Xresources
