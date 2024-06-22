#!/bin/bash

# Trigger the brew_udpate event when brew update or upgrade is run from cmdline
# e.g. via function in .zshrc

brew=(
  icon=􀤆
  label.drawing=off
  padding_right=0
  click_script="yabai -m space --focus 2 "
)


sketchybar --add item brew right   \
           --set brew "${brew[@]}" \
           --subscribe brew brew_update

