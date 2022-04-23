#!/bin/bash

USE_GITIGNORE_OPT=()
# Disable requiring export; we're sourcing this file.
# shellcheck disable=SC2034
if [[ "$USE_GITIGNORE" -eq 0 ]]; then USE_GITIGNORE_OPT=('--no-ignore'); fi

# Join array without inserting a string when the array is empty
array_join() {
    if [[ $# -gt 0 ]]; then
        for arg in "$@"; do
            printf "'%s' " "${arg}"
        done
    fi
}