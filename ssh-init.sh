#!/bin/bash
stow .
chmod 700 ~/.ssh && chmod 600 ~/.ssh/config
chmod 644 ~/.ssh/quang@macmini.pub && chmod 600 ~/.ssh/quang@macmini && ssh -T git@github.com
chmod 600 ~/.ssh/root_contabo

git config --global user.name "Quang Nguyen"
git config --global user.email "quang.sunlight@gmail.com"