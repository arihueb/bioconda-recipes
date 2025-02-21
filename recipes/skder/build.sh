#!/bin/bash

$PYTHON -m pip install . --ignore-installed --no-deps -vv

mkdir -p ${PREFIX}/bin

# (re)-compile programs written in C++
${CXX} -std=c++11 -o ${PREFIX}/bin/skDERcore skDERcore.cpp
chmod +x ${PREFIX}/bin/skDERcore