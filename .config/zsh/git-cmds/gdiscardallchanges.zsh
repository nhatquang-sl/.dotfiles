#!/bin/zsh

gdiscardallchanges () {
    eval "git clean -fxd && git reset --hard"
}