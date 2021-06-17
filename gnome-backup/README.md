https://github.com/home-sweet-gnome/dash-to-panel/issues/517#issuecomment-445466160


To export your settings to a "dtp_settings" file:
```bash
dconf dump /org/gnome/shell/extensions/dash-to-panel/ > dtp_settings
```

and then import them on another pc with:
```bash
dconf load /org/gnome/shell/extensions/dash-to-panel/ < dash-to-panel

dconf load /org/gnome/shell/extensions/unite/ < unite

```


```bash
dconf dump /org/gnome/settings-daemon/plugins/media-keys/ > keybindings
```