#!/bin/bash

me=$(readlink -f "${BASH_SOURCE[0]}")
readme=$(readlink -f README.md)

for f in *; do
    fullpath=$(readlink -f "$f")

    if [[ $fullpath = $me || $fullpath = $readme ]]; then
        continue
    elif [[ -e ~/."$f" ]]; then
        printf 'skipping installing existing file/directory .%s...\n' "$f"
        continue
    fi

    ln -srv "$f" ~/."$f"
done
