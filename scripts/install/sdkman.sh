#!/bin/zsh

source "$HOME/.sdkman/bin/sdkman-init.sh"

input="${HOME}/.config/zsh-config/groups/SDK-Man/packages.txt"
while IFS= read -r line
do
  echo "Installing $line ..."
  sdk install $line
done < "$input"
