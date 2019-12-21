#!/bin/zsh

getsink() {
    pacmd list-sinks |
        awk '/index:/{i++} /* index:/{print i; exit}'
}

((sink=$(getsink) - 1))
echo $sink
