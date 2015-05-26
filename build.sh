#!/bin/bash

pushd ./dotvim/bundle/YouCompleteMe
./install.sh --clang-completer --gocode-completer
popd
