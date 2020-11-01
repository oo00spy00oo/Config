#!/bin/zsh

CANDIATE_PRIVATE_KEY=~/.ssh/id_rsa_$1
CANDIATE_PUBLIC_KEY=$CANDIATE_PRIVATE_KEY.pub

PRIVATE_KEY=~/.ssh/id_rsa
PUBLIC_KEY=$PRIVATE_KEY.pub

if [ -f "$CANDIATE_PRIVATE_KEY" ] && [ -f "$CANDIATE_PUBLIC_KEY" ]; then
    # Remove current SSH key
    rm -rf $PRIVATE_KEY
    rm -rf $PUBLIC_KEY

    # Create the new one with argument
    cp $CANDIATE_PRIVATE_KEY $PRIVATE_KEY
    cp $CANDIATE_PUBLIC_KEY $PUBLIC_KEY

    echo "$1 key changed!"

    ssh-add
    echo "ssh-add updated!"

    exit 0
else
    echo "$1 key not exists!"
    exit 1
fi