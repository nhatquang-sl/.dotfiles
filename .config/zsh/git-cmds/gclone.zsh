#!/bin/zsh

gclone () {
    local branch=$1

    if [[ ${#branch} -gt 0 ]]; then # Up
        echo -e "\e[32mgit clone --recurse-submodules $branch\e[0m"  # Green color for selected item
        eval "git clone --recurse-submodules $branch"
        return
    fi

}