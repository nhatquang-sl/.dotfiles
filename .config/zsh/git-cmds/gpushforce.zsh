#!/bin/zsh

gpushforce () {
    local branch=""
    eval "branch=\$(git rev-parse --abbrev-ref HEAD)"
    local cmd="git push origin $branch --force-with-lease"
    echo -e "\e[32m$cmd\e[0m"  # Green color for selected item
    eval $cmd
}