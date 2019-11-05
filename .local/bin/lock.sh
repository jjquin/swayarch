#!/bin/bash
#ICON=~/Pictures/.icons/lock.png
TMPBG=/tmp/screen.png
grim -o eDP-1 /tmp/screen.png
#text=$(fortune -s)
#convert $TMPBG -dither None -colors 8 $TMPBG
#convert $TMPBG -scale 10% -blur 0x0.5 -resize 1000% $TMPBG
#-dither None -colors 0 \
#convert $TMPBG -blur 0x8 \
#-stroke '#000C' -strokewidth 2 -annotate +75+20 "Locked" \
convert $TMPBG -scale 10% -scale 1000% $TMPBG
#convert $TMPBG -dither FloydSteinberg -colors 24 $TMPBG
#convert $TMPBG -scale 1000% $TMPBG
convert $TMPBG -fill "#262626" -stroke none -draw "circle 684,537 643,530" $TMPBG
convert $TMPBG -font Roboto-Mono-Medium-Nerd-Font-Complete -gravity south -pointsize 55 \
    -fill '#ffffff' -stroke None -annotate +0+200 "" $TMPBG
#convert logo: -fill none -stroke black -strokewidth 3 -draw "rectangle 10,10 630,470" logo_rect.png
#convert $ICON -scale 10% $ICON
#convert $TMPBG $ICON -gravity center -composite $TMPBG
#+75+20
#convert $TMPBG -noise 8x8 $TMPBG

#circular indicator 
PARAM=(--indicator \
	-e --insidecolor=2c2c2cff --ringcolor=f0f0f0ff --line-uses-inside \
    --keyhlcolor=00bcd4ff --bshlcolor=00bcd4ff --separatorcolor=00000000 \
    --insidevercolor=364b6fff --insidewrongcolor=d23c3dff \
    --ringvercolor=f0f0f0ff --ringwrongcolor=f0f0f0ff  \
    --indpos="x+40:y+728" --radius=15 --ring-width=5.0 --wrongcolor 00000000 \
    --locktext="" --lockfailedtext="" --veriftext="" --wrongtext="" --noinputtext="" )

#bar indicator 364b6f77
#PARAM=(--bar-indicator --bar-position h --bar-direction 1 --redraw-thread -t "" \
#	--bar-step 100 --bar-width 100 --bar-base-width 40 --bar-max-height 40 --bar-periodic-step 50 \
#	--bar-color 2c2c2cff --keyhlcolor f0f0f0ff --ringvercolor f0f0f0ff --ringwrongcolor d23c3dff \
#	--bshlcolor d23c3dff --wrongcolor 00000000 \
#	--veriftext="" --wrongtext="" --noinputtext="" )
#i3lock "${PARAM[@]}" -i "$TMPBG"
PARAM2=(-e -K --inside-color=262626ff --ring-color=f0f0f0ff --line-uses-inside \
	--key-hl-color=ff6e67ff --bs-hl-color=ff6e67ff --separator-color=00000000 \
	--inside-ver-color=262626ff --inside-wrong-color=a11a14ff --inside-clear-color=262626ff \
	--ring-clear-color=f0f0f0ff 
	--ring-ver-color=f0f0f0ff --ring-wrong-color=f0f0f0ff \
	--indicator-radius=50 --indicator-thickness=10 --text-wrong-color=00000000 \
	--text-ver-color=00000000 --text-color=00000000 --text-clear-color=00000000) 
swaylock "${PARAM2[@]}" -f -i "$TMPBG";
#> /dev/null 2>&1
if [[ -n $1 ]]
	then systemctl $1
fi

