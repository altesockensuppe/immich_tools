#!/bin/bash
source $HOME/.config/immich_upload.conf

if [[ "$1" == "f" ]]; then
    immich upload --yes --key "$key" --server "$api" "$2"
elif [[ "$1" == "d" ]]; then
    immich upload --yes --key "$key" --server "$api" --recursive "$2"
elif [[ "$1" == "a" ]]; then
    immich upload --yes --key "$key" --server "$api" --album --recursive "$2"
else
    echo "use:"
    echo "* 'f' for foto"
    echo "* 'd' for directory"
    echo "* 'a' for directory and creating a album"
    echo "example: bash immich_upload.sh f picture.jpg"
fi
