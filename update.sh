#!/bin/bash

echo "================================================="
echo "======== Update setting for applications ========"
echo "================================================="

echo "Update for Dash to Panel's setting"

dconf load /org/gnome/shell/extensions/dash-to-panel/ < ./gnome-backup/dash-to-panel

echo "Update for Unite's setting"

dconf load /org/gnome/shell/extensions/unite/ < ./gnome-backup/unite

echo "Update for keybindings setting"
dconf load /org/gnome/settings-daemon/plugins/media-keys/ < ./gnome-backup/keybindings


echo "======== Restart the Gnome Shell! ========"
killall gnome-shell

echo "======== Update successfully!!! ========"
