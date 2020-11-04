#!/bin/zsh

source "$HOME/.sdkman/bin/sdkman-init.sh"

input="$(pwd)/groups/SDK-Man/packages.txt"
while IFS= read -r line
do
  echo "Installing $line ..."
  sdk install $line
done < "$input"
