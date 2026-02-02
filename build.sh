#!/bin/bash
set -xe

if ! command -v docker &> /dev/null; then
    echo -e "Error: Docker is not installed. Please install Docker first."
    exit 1
fi

if [ ! -d ksy ] ; then
    git clone --depth 1 https://github.com/kaitai-io/kaitai_struct_formats.git ksy
    rm -rf ksy/.git
fi

docker build -t kaitai-cli .
