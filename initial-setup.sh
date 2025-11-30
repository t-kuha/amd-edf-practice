#!/bin/sh

# stop on error
set -euo pipefail

# google repo tool
if [ ! -d "${HOME}/.bin" ]; then
    mkdir -p ~/.bin
    curl https://storage.googleapis.com/git-repo-downloads/repo > ~/.bin/repo
    chmod a+rx ~/.bin/repo
fi
PATH="${HOME}/.bin:${PATH}"

# necessary packages
sudo apt -y update
sudo apt -y install build-essential chrpath cpio debianutils diffstat file gawk gcc git \
iputils-ping libacl1 liblz4-tool locales python3 python3-git python3-jinja2 python3-pexpect \
python3-pip python3-subunit socat texinfo unzip wget xz-utils zstd

# get sources
mkdir -p yocto/edf
pushd yocto/edf
repo init -u https://github.com/Xilinx/yocto-manifests.git -b rel-v2025.2 -m default-edf.xml
repo sync
popd

echo "setup complete."
