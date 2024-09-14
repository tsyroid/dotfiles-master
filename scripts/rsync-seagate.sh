#!/bin/bash

# Rsync contents of /home/taz to /stor/thinkpad/

rsync -ahvAX --delete --exclude-from="/home/taz/.dotfiles/excludes/rs-exclude.txt" /home/taz/ /stor/thinkpad/home-current
