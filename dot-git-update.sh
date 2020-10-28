#!/bin/bash

# This script is to update my 'desk-LMDE4-dotfiles' repository on github.

# Push to the stack and move to the 'desk-LMDE4-dotfiles' directory.
pushd /home/kim/projects/desk-LMDE4-dotfiles/

# Add any changes to 'master' branch.
git add -A

# Commit changes to the 'master' branch.
git commit -m "update to dotfiles"

# Push the changes to the github repository.
git push -u

# Go to previous directory and remove 'desk-LMDE4-dotfiles' from the stack
popd

