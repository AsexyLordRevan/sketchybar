#!/bin/bash

SPOTIFY_EVENT="com.spotify.client.PlaybackStateChanged"
POPUP_SCRIPT="sketchybar -m --set spotify.anchor popup.drawing=toggle"





spotify_title=(
  icon.drawing=off
  padding_left=0
  padding_right=0
  width=0
  label.font="$FONT:Heavy:7.0"
  y_offset=-6
)

spotify_artist=(
  icon.drawing=off
  y_offset=0
  padding_left=0
  padding_right=0
  width=0
  y_offset=4
)

spotify_album=(
  icon.drawing=off
  padding_left=0
  padding_right=0
  y_offset=0
  width=0
)




spotify_back=(
  icon=􀊎
  icon.padding_left=5
  icon.padding_right=3
  icon.color=$WHITE
  script="$PLUGIN_DIR/spotify.sh"
  label.drawing=off
)

spotify_play=(
  icon=􀊔
  background.height=0
  background.corner_radius=20
  width=20
  align=center
  background.border_color=$WHITE
  background.border_width=0
  background.drawing=on
  icon.padding_left=4
  icon.padding_right=5
  icon.color=$WHITE
  updates=on
  label.drawing=off
  script="$PLUGIN_DIR/spotify.sh"
  y_offset=0
)

spotify_next=(
  icon=􀊐
  icon.padding_left=5
  icon.padding_right=5
  icon.color=$WHITE
  label.drawing=off
  script="$PLUGIN_DIR/spotify.sh"
  y_offset=0
)


sketchybar --add event spotify_change $SPOTIFY_EVENT             \
           --set spotify.anchor "${spotify_anchor[@]}"           \
           --subscribe spotify.anchor mouse.entered mouse.exited \
                                      mouse.exited.global        \
                                                                 \
                                                                 \
           --set spotify.state "${spotify_state[@]}"             \
           --subscribe spotify.state mouse.clicked               \
                                                                 \
           --add item spotify.back left          \
           --set spotify.back "${spotify_back[@]}"               \
           --subscribe spotify.back mouse.clicked                \
                                                                 \
           --add item spotify.play left          \
           --set spotify.play "${spotify_play[@]}"               \
           --subscribe spotify.play mouse.clicked spotify_change \
                                                                 \
           --add item spotify.next left          \
           --set spotify.next "${spotify_next[@]}"               \
           --subscribe spotify.next mouse.clicked                \
                                                                 \
                       \
                                                                 \
           --add item spotify.spacer left        \
           --set spotify.spacer width=5                          \
                                                                 \
          --add item spotify.title left         \
           --set spotify.title "${spotify_title[@]}"             \
             --add item spotify.artist left        \
           --set spotify.artist "${spotify_artist[@]}"           \
           --set spotify.controls "${spotify_controls[@]}"       \
