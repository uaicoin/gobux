#!/usr/bin/env bash
# use this installer to clone-and-compile uaicoin in one line
# supports Ubuntu 16 LTS

sudo apt-get update
yes "" | sudo apt-get install build-essential python-dev gcc-4.9 g++-4.9 git cmake libboost1.58-all-dev librocksdb-dev
export CXXFLAGS="-std=gnu++11"
wget https://github.com/uaicoin/uaicoin/releases/download/v0.4.2.3/UaiCoin-v0.4.2.3-Linux.tar.gz
tar -xf UaiCoin-v0.4.2.3-Linux.tar.gz
./UaiCoind --no-console
