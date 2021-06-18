#!/bin/bash

echo "================================================="
echo "======== Update setting for applications ========"
echo "================================================="

echo "Update for Dash to Panel's setting"

dconf load /org/gnome/shell/extensions/dash-to-panel/ < ./dash-to-panel

echo "Update for Unite's setting"

dconf load /org/gnome/shell/extensions/unite/ < ./unite

echo "Update for keybindings setting"
dconf load /org/gnome/settings-daemon/plugins/media-keys/ < ./keybindings


echo "======== Restart the Gnome Shell! ========"
killall gnome-shell

echo "======== Update successfully!!! ========"
