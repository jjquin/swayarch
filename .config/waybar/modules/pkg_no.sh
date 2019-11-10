#/bin/bash
pac=$(checkupdates 2>/dev/null | wc -l)
aur=$(yay -aQu 2>/dev/null | wc -l)
total=$(( $pac + $aur ))

pactip=""
aurtip=""

if [[ $pac -gt 0 ]]; then
	pactip="\n$pac Pacman Updates"
fi

if [[ $aur -gt 0 ]]; then
	aurtip="\n$aur AUR Updates"
fi

percentage=$total

if [[ $total -eq 0 ]]; then
	text="📦"
	tooltip="📦 Repository Sync\nNo new packages for update."
else 
	text="🎁"
	
	tooltip="🎁 Repository Sync\n$total Updates available.\nClick statusbar icon (🎁) for updates.$pactip$aurtip"
fi

class=""

if [[ $total -gt 19 ]]; then
	class="warning"
elif [[ $total -gt 49 ]]; then
	class="critical"
fi

echo "{\"text\": \""$text"\", \"tooltip\": \""$tooltip"\", \"class\": \""$class"\", \"percentage\": "$percentage" }"

