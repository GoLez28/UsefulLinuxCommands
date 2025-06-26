#!/bin/bash

# Encuentra el número de tarjeta del headset Zeus X
card_index=$(aplay -l | grep "H510-WL Zeus X" | head -n1 | grep -oP 'card \K[0-9]+')

# Si lo encontró, sube el volumen del PCM al 100%
if [[ -n "$card_index" ]]; then
    amixer -c "$card_index" set PCM 100% > /dev/null
fi
