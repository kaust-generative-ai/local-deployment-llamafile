#!/bin/bash

# entire script fails if a single command fails
set -e

# install llamafile into the bin directory of the conda environment
PROJECT_DIR="$PWD"
ENV_PREFIX="$PROJECT_DIR"/env
VERSION="${1-0.8.13}"
URL=https://github.com/Mozilla-Ocho/llamafile/releases/download/"$VERSION"/llamafile-"$VERSION"
curl --location --output $ENV_PREFIX/bin/llamafile-"$VERSION" "$URL"
chmod u+x "$ENV_PREFIX"/bin/llamafile-"$VERSION" 

# install whsiperfile into the bin directory of the conda environment
URL=https://github.com/Mozilla-Ocho/llamafile/releases/download/"$VERSION"/whisperfile-"$VERSION"
curl --location --output $ENV_PREFIX/bin/whisperfile-"$VERSION" "$URL"
chmod u+x "$ENV_PREFIX"/bin/whisperfile-"$VERSION"

# install sdfile into the bin directory of the conda environment
PROJECT_DIR="$PWD"
ENV_PREFIX="$PROJECT_DIR"/env
VERSION="${1-0.8.13}"
URL=https://github.com/Mozilla-Ocho/llamafile/releases/download/"$VERSION"/sdfile-"$VERSION"
curl --location --output $ENV_PREFIX/bin/sdfile-"$VERSION" "$URL"
chmod u+x "$ENV_PREFIX"/bin/sdfile-"$VERSION"

