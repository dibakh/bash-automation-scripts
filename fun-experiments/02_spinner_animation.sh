#!/bin/bash
spin='|/-\'
i=0
while [ $i -lt 10 ]; do
  for s in $spin; do
    printf "\r$s"
    sleep 0.2
  done
  i=$((i+1))
done
printf "\nDone!\n"