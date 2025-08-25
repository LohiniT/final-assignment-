#!/usr/bin/env bash
# simple-interest.sh
# Usage: ./simple-interest.sh PRINCIPAL RATE PERCENTAGE_TIME
# Example: ./simple-interest.sh 1000 5 2  => principal=1000 rate=5% time=2 years

if [ "$#" -ne 3 ]; then
  echo "Usage: $0 PRINCIPAL RATE(%) TIME"
  exit 1
fi

P=$1
R=$2
T=$3

# Simple interest = (P * R * T) / 100
SI=$(echo "scale=2; ($P * $R * $T) / 100" | bc)
echo "Simple Interest for principal $P at $R% for $T year(s) is: $SI"
