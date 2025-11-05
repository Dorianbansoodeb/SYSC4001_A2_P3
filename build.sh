#!/bin/bash
set -e

# Clean/create bin
if [ -d "bin" ]; then
  rm -rf bin/*   # -rf handles .dSYM directories on macOS
else
  mkdir -p bin
fi

# get rid of warnings for unused parameters
g++ -std=gnu++17 -g -O0 -I . \
  -Wall -Wextra \
  -Wno-deprecated-declarations \
  -Wno-unused-parameter \
  -o bin/interrupts interrupts.cpp