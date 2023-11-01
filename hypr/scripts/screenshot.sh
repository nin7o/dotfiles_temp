#!/bin/bash
date=$(date | sed 's/ /-/g' | sed 's/-CEST-2023/.png/g')
dst=/home/nin7o/Pictures/Screenshots/
hyprshot -o $dst -f $date -m region
