#!/usr/bin/env bash
set -e

writefile=$1
writestr=$2

if [[ -z "$writefile" || -z "$writestr" ]]; then
    echo "Invalid Arguments"
    exit 1
fi

mkdir -p `dirname "$writefile"`
echo "$writestr" > "$writefile"
