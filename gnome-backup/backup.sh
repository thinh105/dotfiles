#!/bin/bash

echo "================================================="
echo "======== Backup setting for applications ========"
echo "================================================="

echo "Backup for Dash to Panel's setting"

dconf dump /org/gnome/shell/extensions/dash-to-panel/ > ./gnome-backup/dash-to-panel

echo "Backup for Unite's setting"

dconf dump /org/gnome/shell/extensions/unite/ > ./gnome-backup/unite

echo "Backup for keybindings setting"
dconf dump /org/gnome/settings-daemon/plugins/media-keys/ > ./gnome-backup/keybindings

echo "======== Backup successfully!!! ========"
