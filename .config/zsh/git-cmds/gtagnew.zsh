#!/bin/zsh

gtagnew () {
    local tagName=$1

    if [[ ${#tagName} -gt 0 ]]; then # Up
        local branch=""
        eval "branch=\$(git rev-parse --abbrev-ref HEAD)"
        local cmd="git push origin $branch"
        echo -e "\e[32m$cmd\e[0m"  # Green color for selected item
        eval $cmd

        echo -e "\e[32mgit tag -a $tagName -m \"$tagName\"\e[0m"
        eval "git tag -a $tagName -m \"$tagName\""
        eval "git push origin $tagName"
        return
    fi
}