#!/bin/zsh

getsink() {
    pacmd list-sinks |
        awk '/index:/{i++} /* index:/{print i; exit}'
}

getmuted()
{
    pacmd list-sinks |
        awk '/^\smuted/{i++} i=='$(getsink)'{print $2; exit}'
}

((sink=$(getsink) - 1))
muted=$(getmuted)
if [[ "$muted" == "yes" ]]
then
	pactl set-sink-mute $sink false
else
	pactl set-sink-mute $sink true
fi
