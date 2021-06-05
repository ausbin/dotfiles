#!/bin/bash

me=$(readlink -f "${BASH_SOURCE[0]}")

for f in *; do
    fullpath=$(readlink -f "$f")

    if [[ $fullpath = $me ]]; then
        continue
    elif [[ -e ~/."$f" ]]; then
        printf 'skipping installing existing file .%s...\n' "$f"
        continue
    fi

    ln -srv "$f" ~/."$f"
done
