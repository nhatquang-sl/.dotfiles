#!/bin/zsh

gdelete () {
    local branch=$1
    branch="${branch//\*/}"     # Remove asterisks
    # branch="$(echo "$branch" | xargs)"  # Trim whitespace

    if [[ ${#branch} -gt 0 ]]; then # Up
        cmd="git branch -D $branch"
        echo -e "\e[32m$cmd\e[0m"  # Green color for selected item
        eval "$cmd"
        return
    fi
    selectExeCmd "git branch" "git branch -D [selectedCmd]"
}