#!/bin/sh

# google repo tool
mkdir -p ~/.bin
PATH="${HOME}/.bin:${PATH}"
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/.bin/repo
chmod a+rx ~/.bin/repo

# necessary packages
sudo apt update
sudo apt install chrpath cpio diffstat zstd
