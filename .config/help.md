# Keyboard shortcut and useful commands

# Keyboard shortcut

## i3 window manager

### i3 general actions

|Shortcut       |       Action  |       Comment |
|:------------- |       :----------     |---|
|Super+E        |       Exit i3 |       |
|Super+C        |       Reload i3 config        |       |
|Super+R        |       Restart i3 in place     |       |
|Super+q        |       Close current App in focus|     |
|Super+Q        |       Kill focused window     |       |
|Super+b        |       Bar mode toggle |show/hide the status bar |
|Super+[0-9]|   Change active workspace |       switch to the workspace number... |
|Super+P        |       Take a screenshot with flameshot|       |
|Super+alt+s    |       Start screen and audio recording|       |
|Super+F1|      Open this file as a pdf in Zathura|     see [pandoc documentations](https://jdhao.github.io/2019/05/30/markdown2pdf_pandoc/)|

### Windows focus

|Shortcut       |       Action  |       Comment |
|:------------- |       :----------     |---|
|Super+[hjkl]   |       Focus left\|down\|up\|right|move focus |
|Super+space    |       floating toggle |make the window in focus toggle or tile|
|Super+a        |       Focus parent container|move focus to the parent container |
|Super+A|       Focus child container |make focus to the child container|
|Sup+Shift+space|       focus mode\_toggle      |toggle focus between floatting and tiled |
|Super+Mouse    |       drag floating windows   |       |
|Super+f        |       Toggle full screen      |       |
|Super+s        |       Toggle sticky|(un)make  the window sticky to all workspaces|

### Moving windows

|Shortcut       |       Action  |       Comment |
|:------------- |       :----------     |---|
|Super+t        |       Toggle split    |        |
|Super+[HJKL]|  Move window to the left\|down\|up\|right|| |
|Super+Shift+[0-9]|     Move container to workspace N | |
|Super+r        |       Mode resize|[hjkl]= small resize \| Shift+[hjkl]=big one |


### Launching applications

|Shortcut       |       Action  |       Comment |
|:------------- |       :----------     |---|
|Super+enter    |       launch terminal |       without menubar |
|Super+d        |       Launch Rofi     |       a better Dmenu, rofi needs to be installed |
|Super+D        |       Launch Dmenu    |       Dmenu needs to be installed |
|Super+e        |       Launch lf file explorer |       a terminal file explorer|
|Super+alt+b    |       Launch Brave    |       |
|Super+alt+p    |       Launch Protonmail in Brave|     |
|Super+alt+i    |       Launch package manager| |
|Super+alt+j    |       Launch Joplin | |
|Super+alt+g    |       Launch Steam on workspace 9 |   |
|Super+alt+m    |       Launch Thunderbird on workspace 3 |     |
|Super+alt+w    |       Launch Remmin (TS\|RDP) on ws 10|       |
|Super+alt+v    |       Launch webcam with mpv| |
|Super+alt+z    |       Launch Zoom |   |

## tmux shortcuts

Note: Prefix for tmux actions has been re-bound to **ctrl+a** instead of the default **ctrl+b**.

|Shortcut       |       Action  |       Comment |
|:------------- |       :----------     |---|
|Prefix+c|      Create new window       |       |
|Prefix+L|      Open last window        |same as Prefix+a       |
|Prefix+"|      Split pane horizontaly| |
|Prefix+%|      Split pane verticaly|   |
|Prefix+r|      Reload tmux config|     |
|Prefix+[hjkl]| Move to pane left/down/up/right |       |

## Zathura shortcuts

|Shortcut       |       Action  |       Comment |
|:------------- |       :----------     |---|
|[hjkl] |       Move pdf left/down/up/right|    |
|[ud]   |       Scroll half page up\|down       |       |
|[KJ]   |       Zoom in\|out    |       |
|r      |       reload  |       |
|D      |       toggle page mode|       |
|i      |       recolor |       |
|p      |       print|  |
