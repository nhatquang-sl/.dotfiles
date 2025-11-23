#!/bin/zsh

gtagdelete () {
    local branch=$1

    if [[ ${#branch} -gt 0 ]]; then # Up
        echo -e "\e[32mgit tag -d $branch\e[0m"  # Green color for selected item
        eval "git tag -d $branch"

        echo -e "\e[32mgit push origin --delete $branch\e[0m"  # Green color for selected item
        eval "git push origin --delete $branch"
        return
    fi
    selectExeCmd "git tag" "git tag -d [selectedCmd] && git push origin --delete [selectedCmd]"
}