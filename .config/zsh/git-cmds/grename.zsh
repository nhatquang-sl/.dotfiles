#!/bin/zsh

grename () {
    local branchNew=$1
    branchNew="$(echo "$branchNew" | xargs)"  # Trim whitespace

    if [[ ${#branchNew} -gt 0 ]]; then # Up
        cmd="git branch -M $branchNew"
        echo -e "\e[32m$cmd\e[0m"  # Green color for selected item
        eval "$cmd"

        cmd="git push origin -u $branchNew"
        echo -e "\e[32m$cmd\e[0m"  # Green color for selected item
        eval "$cmd"

        cmd="git push origin --delete $branchOld"
        echo -e "\e[32m$cmd\e[0m"  # Green color for selected item
        eval "$cmd"
    fi
}