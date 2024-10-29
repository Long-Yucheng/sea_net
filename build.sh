#!/bin/bash

if [ $# -eq 0 ]; then
    cd build
    cmake ..
    cmake --build .
elif [ $# -eq 1 ]; then
    if [ $1 = "clean" ]; then
        rm -rf ./build/*
        echo "project is clean"
    fi
else
    echo "parameters size is wrong"
    echo "You can exec: ./build.sh or ./build.sh clean"
fi

