#!/usr/bin/env bash
set -euo pipefail

# Ensure bin/ exists
mkdir -p bin

# Clean previous artifacts safely (macOS may create a .dSYM directory)
rm -f bin/interrupts || true
rm -rf bin/interrupts.dSYM || true

# Compile (g++ or clang++; both ok). Make sure the filename is correct: interrupts.cpp
g++ -std=c++17 -g -O0 -I . -o bin/interrupts interrupts.cpp
# If you prefer clang++, comment the line above and uncomment the next:
# clang++ -std=c++17 -g -O0 -I . -o bin/interrupts interrupts.cpp

echo "Build OK -> bin/interrupts"
