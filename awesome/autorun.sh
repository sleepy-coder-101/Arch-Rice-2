#!/bin/sh

nitrogen --restore &
picom --experimental-backends &
nm-applet &

run() {
  if ! pgrep -f "$1" ;
  then
    "$@"&
  fi
}

