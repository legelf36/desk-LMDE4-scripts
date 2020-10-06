#!/bin/bash

# This script is to update my 'desk-LMDE4-scripts' repository on github.

# Push to the stack and move to the 'scripts' directory.
pushd /home/kim/projects/desk-LMDE4-dotfiles/

# Add any changes to 'master' branch.
git add -A

# Commit changes to the 'master' branch.
git commit -m "update to scripts"

# Push the changes to the github repository.
git push -u

# Go to previous directory and remove '.scripts' from the stack
popd

