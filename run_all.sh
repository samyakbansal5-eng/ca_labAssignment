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

TRACES=(
401.bzip2-277B
403.gcc-16B
462.libquantum-1343B
605.mcf_s-1644B
)

for BP in "${BPS[@]}"
do
    for RP in "${RPS[@]}"
    do
        BIN="${BP}-no-no-no-no-${RP}-1core"

        for T in "${TRACES[@]}"
        do
            echo "Running $BIN on $T"

            ./run_champsim.sh \
            $BIN \
            1 \
            10 \
            ${T}.champsimtrace.xz
        done
    done
done


