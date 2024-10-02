#!/bin/bash

# entire script fails if a single command fails
set -e

# clone the llamafile repository
PROJECT_DIR="$PWD"
SRC_DIR="$PROJECT_DIR"/src/llamafile
if [ ! -d "$SRC_DIR" ]; then git clone https://github.com/mozilla-ocho/llamafile "$SRC_DIR"; fi

# compile using make and install into the bin/ directory of the conda environment
make --directory "$SRC_DIR" clean
make --directory "$SRC_DIR" --jobs PREFIX="$PROJECT_DIR"/env
make --directory "$SRC_DIR" install PREFIX="$PROJECT_DIR"/env

# remove the llamafile source code
rm -rf "$SRC_DIR"
