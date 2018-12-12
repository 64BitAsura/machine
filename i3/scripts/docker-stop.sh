#!/bin/bash
# Right click
    if [[ "${BLOCK_BUTTON}" -eq 3 ]]; then
        docker stop $(docker ps -q)
    fi
    count=$(docker ps --format '{{.Names}}' | wc -l)
    echo "<span color=\"#FE1C1C\">  Docker $count</span>"
