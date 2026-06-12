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

if [ "$1" = "create_local_data" ]; then
    cp data/data.csv local_data/data.csv
    cp data/report.html local_data/report.html
fi

if [ "$1" = "structure" ]; then
    ls
    ls generator
    ls reporter
    ls data
    ls local_data
fi

if [ "$1" = "clear_data" ]; then
    rm -f data/data.csv
    rm -f data/report.html
    rm -f local_data/data.csv
    rm -f local_data/report.html
fi