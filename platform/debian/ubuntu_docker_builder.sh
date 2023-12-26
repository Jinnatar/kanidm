#!/usr/bin/env bash

# Starts a ubuntu docker container with the source code mounted

# Operate from the root directory of the repo, aka two steps up from the script
cd "$(dirname $0)/../../"
echo "Running in $PWD"

echo "Starting base ubuntu container"
echo "Repository is in ~/kanidm/"
docker run --rm -it \
    -e "INSTALL_RUST=1" \
    -e "PACKAGING=1" \
    -v "$(pwd):/root/kanidm/" \
    --workdir "/root/kanidm/" \
    ubuntu:latest "$@"
