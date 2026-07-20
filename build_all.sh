#!/bin/bash

BPS=(
bimodal
gshare
perceptron
hashed_perceptron
modified_bullseye
adaptive_bullseye
)

RPS=(
lru
srrip
drrip
ship
mru
random
)

for BP in "${BPS[@]}"
do
    for RP in "${RPS[@]}"
    do
        echo "Building $BP with $RP"

        ./build_champsim.sh \
        $BP \
        no no no no \
        $RP \
        1
    done
done
