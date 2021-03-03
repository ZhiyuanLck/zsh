#!/usr/bin/env bash

git submodule --init --recursive
rm -f ~/.zcompdump; compinit
