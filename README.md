28/03/2021 9:54 PM
# Apps on store
- Joplin
- VS Code
- [Flameshot](https://itsfoss.com/flameshot/)
- VLC
- Foliate


# Apps need to download
- Chrome
- Foxit reader
- [Bammboo](https://github.com/BambooEngine/ibus-bamboo)

```bash
jssudo add-apt-repository ppa:bamboo-engine/ibus-bamboo
sudo apt-get update
sudo apt-get install ibus-bamboo
ibus restart
# Đặt ibus-bamboo làm bộ gõ mặc định
gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us'), ('ibus', 'Bamboo')]"
```
## change mouse scroll - [imWheel](http://www.webupd8.org/2015/12/how-to-change-mouse-scroll-wheel-speed.html)
```bash
sudo apt install imwheel

# setting for imwheel
nano ~/.imwheelrc
----------------

# paste these line to the file
".*"
None,      Up,   Button4, 8
None,      Down, Button5, 8
Control_L, Up,   Control_L|Button4
Control_L, Down, Control_L|Button5
Shift_L,   Up,   Shift_L|Button4
Shift_L,   Down, Shift_L|Button5

# restart imwheel
imwheel --kill
```

Open `Startup Applications`
Add
![bc31dea11bd00644916521515c88b742.png](:/b1735f8a9f20499db27eb0fdb809e3e9)

# Code Apps


Get configure back from cloud with `setting sync`

Shortcuts
1. Upload Key : Shift + Alt + U
2. Download Key : Shift + Alt + D

- Git
```
sudo apt-get install git
```
- oh-my-zsh
```
#install zsh
sudo apt-get install zsh

#install oh-my-zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#Change your default shell
chsh -s $(which zsh)
#You must log out from your user session and log back in to see this change.
```


Add these lines into .zshrc file
```
#expand aliases when typing Tab
zstyle ':completion:*' completer _expand_alias _complete _ignored


# Customize the Oh-my-zsh tab title to the current folder
case $TERM in
    xterm*)
     precmd ()  {
        print -Pn "\e]0; %24<..<%/\a"
     }
     ;;
esac

```

- [fnm](https://github.com/Schniz/fnm)

**Install**
```
curl -fsSL https://fnm.vercel.app/install | bash
```

**Usage**
```
fnm list-remote # show all versions on remote

fnm install [VERSION]

fnm install --lts

fnm use [VERSION]

fnm list # show local versions
```

# Gnome Extensions
- Unite
- Dash to panel
![5bdbbc0682c17ba3d4fa4558680f1d7e.png](:/c788b984b89348ccaad0c047e2430c1c)
- dconf-editor
- [Remove Audio Device Selection Dialog](https://extensions.gnome.org/extension/1482/remove-audio-device-selection-dialog/)
	
# My favorite Setting

## Keyring : set empty string

### Remove keyring : 
https://www.fosslinux.com/2561/how-to-disable-keyring-in-ubuntu-elementary-os-and-linux-mint.htm
## [Don't ask pass when unlock](https://askubuntu.com/questions/1029696/disable-password-request-from-suspend-18-04/1044908#1044908)\
	Open `Dcof-editor` then navigate to `org/gnome/desktop/screensaver` and turn off `ubuntu-lock-on-suspend`
	
## Change the folder in sidebar nautilus
https://askubuntu.com/questions/79150/how-do-i-remove-places-entries-from-the-nautilus-sidebar/79155#79155

## Reduce height of Window title bar

Edit file `~/.config/gtk-3.0/gtk.css`

```bash
 /*
 * Reduce height of window header (title?) bars.
 * Seems enough to specify padding, no need to repeat
 *   padding-left padding-right padding-top padding-bottom
 * nor it seems necessary to even mention
 *   margin-top margin-bottom
 */

.default-decoration {
    min-height: 0px;
    padding: 1px;
}

.default-decoration .titlebutton {
    min-height: 0px;
    padding: 0px;
}

```

## Set Shortcut keyboard

Remove old key for screenshots:

![6b50b84d5e416da124e851e0498037ec.png](:/0010e9e4fee44964b20249de22367dca)

Set new hot key:

![867c25ddc07c99805c8dbcb0d1eeb268.png](:/87b12c664526453da2a3a92b5add0779)

+ Restart | `systemctl reboot` | Shift + Ctrl + ~
+ Shutdown | `systemctl poweroff` | Shift + Ctrl + Escape
+ Suspend | `systemctl suspend` | Ctrl + Escape
+ Flameshot | `flameshot gui` | print
+ xkill | `xkill` | Ctrl + Alt + Backspace

## Set size mouse
![3efe140a197d975cfb855a19b535672d.png](:/3ebeab75120b4abc992c0bcd801edece)

## [Remove default bookmark in nautilus](https://askubuntu.com/questions/762591/how-to-remove-unwanted-default-bookmarks-in-nautilus)

Remove the unwanted folder inside two files:
```
nano ~/.config/user-dirs.dirs

sudo nano /etc/xdg/user-dirs.defaults
```

The solution is to comment out the directories that you do not want to show in Nautilus from both user-dir files. After logging out and back in, the unwanted bookmarks go away.

