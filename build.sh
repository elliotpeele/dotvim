#!/bin/bash

mkdir -p dotvim/undo

pushd ./dotvim/bundle/YouCompleteMe
./install.sh --clang-completer --gocode-completer
popd
