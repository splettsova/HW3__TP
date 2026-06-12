#!/bin/bash

if [ "$1" = "build_generator" ]; then
    docker build -t generator-image ./generator
fi

if [ "$1" = "run_generator" ]; then
    docker run -v "$(pwd)/data:/data" generator-image
fi

if [ "$1" = "build_reporter" ]; then
    docker build -t reporter-image ./reporter
fi

if [ "$1" = "run_reporter" ]; then
    docker run -v "$(pwd)/data:/data" reporter-image
fi