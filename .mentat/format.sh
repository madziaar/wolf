#!/bin/bash

# Format C++ code using clang-format
find src -name "*.cpp" -o -name "*.hpp" -o -name "*.c" -o -name "*.h" | grep -v "src/rust" | xargs clang-format-18 -i
