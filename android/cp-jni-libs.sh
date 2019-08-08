#!/bin/bash

cpus=(
    'arm64'
    'armv7a'
    'x86'
    'x86_64'
)

lib_path="src/main/libs"

target='out'

if [ -n "$1" ];then
target=$1
fi

if [ ! -d $target ];then
mkdir $target
echo "create ${target} path"
fi

for var in ${cpus[@]}; do
    path="ijkplayer/ijkplayer-${var}/${lib_path}"
    cp -R $path $target
    echo "$path is already copy to ${target}"
done