#!/bin/bash
# generates the filter arguments used in build and test commands
# example output: "--filter=package1 --filter=package2 --filter=package3"

if [ $# -eq 0 ]; then
  echo "No packages provided."
  exit 1
fi

filter_args=""

for package in "$@"; do
  filter_args+="--filter=$package "
done

echo "$filter_args"