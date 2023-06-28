# xmodmap -e "clear lock" #disable caps lock switch
# xmodmap -e "keysym Caps_Lock = Control_L" #set caps_lock as escape
setxkbmap  -option 'caps:ctrl_modifier'
