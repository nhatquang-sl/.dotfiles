#!/bin/zsh

gtagdelete () {
    local branch=$1

    if [[ ${#branch} -gt 0 ]]; then # Up
        echo -e "\e[32mgit checkout $branch\e[0m"  # Green color for selected item
        eval "git checkout $branch"
        return
    fi
    selectExeCmd "git tag" "git tag -d [selectedCmd] && git push origin --delete [selectedCmd]"
}