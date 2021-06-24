#!/bin/bash

echo "================================================="
echo "======== Backup setting for applications ========"
echo "================================================="

echo "Backup for Dash to Panel's setting"

dconf dump /org/gnome/shell/extensions/dash-to-panel/ > ./dash-to-panel

echo "Backup for Unite's setting"

dconf dump /org/gnome/shell/extensions/unite/ > ./unite

echo "Backup for keybindings setting"
dconf dump /org/gnome/settings-daemon/plugins/media-keys/ > ./keybindings

echo "======== Backup successfully!!! ========"
