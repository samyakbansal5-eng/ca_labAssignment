#!/bin/bash

echo "File,IPC,Accuracy,MPKI" > summary.csv

for F in results_10M/*.txt
do
    IPC=$(grep "cumulative IPC" "$F" | tail -1 | awk '{print $5}')

    ACC=$(grep "Branch Prediction Accuracy" "$F" | awk '{print $6}')
    MPKI=$(grep "Branch Prediction Accuracy" "$F" | awk '{print $8}')

    echo "$F,$IPC,$ACC,$MPKI" >> summary.csv
done
