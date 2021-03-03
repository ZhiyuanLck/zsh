#!/usr/bin/env zsh

git submodule update --init --recursive
rm -f ~/.zcompdump; compinit
