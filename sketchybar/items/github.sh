#!/bin/bash



github_bell=(
  update_freq=180
  icon.font="$FONT:Bold:15.0"
  icon=$BELL
  icon.color=$BLUE
  label=$LOADING
  label.highlight_color=$BLUE
  popup.align=right
  script="yabai -m focus space 4"
  click_script="yabai -m focus space 4"
)

github_template=(
  drawing=off
  background.corner_radius=12
  padding_left=7
  padding_right=7
  icon.background.height=2
  icon.background.y_offset=-12
)

sketchybar --add item github.bell right                 \
           --set github.bell "${github_bell[@]}"        \
           --subscribe github.bell  mouse.clicked       \
                                                        \
           --add item github.template popup.github.bell \
           --set github.template "${github_template[@]}"
