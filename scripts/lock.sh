RES=$(xdpyinfo | grep dimensions | sed -r 's/^[^0-9]*([0-9]+x[0-9]+).*$/\1/')
IMAGE=/tmp/i3lock.png
ffmpeg -f x11grab -video_size $RES -y -i $DISPLAY -filter_complex "boxblur=10,eq=contrast=1:saturation=0.5:gamma=1:gamma_r=1:gamma_g=1:gamma_b=1:gamma_weight=1" -vframes 1 $IMAGE
i3lock --insidecolor=ffffff1c --ringcolor=ffffff3e --linecolor=ffffff00 --keyhlcolor=00000080 --ringvercolor=00000000 --insidevercolor=0000001c --ringwrongcolor=00000055 --insidewrongcolor=0000001c -i $IMAGE
