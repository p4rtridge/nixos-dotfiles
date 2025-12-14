#!/usr/bin/env bash

on=$(hyprctl -j getoption animations:enabled | jq --raw-output '.int')

if [[ $on -eq 1 ]]; then
  hyprctl keyword animations:enabled false
  hyprctl keyword decoration:blur:enabled false

  dunstify -a "Hyprland" "Effects" "Disabled"
else
  hyprctl keyword animations:enabled true
  hyprctl keyword decoration:blur:enabled true

  dunstify -a "Hyprland" "Effects" "Enabled"
fi
