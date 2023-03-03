#!/bin/bash

mkdir build
cd build
git clone https://github.com/nebula-labs/planets.git
cd planets

# setup network and bridge
make aura-juno