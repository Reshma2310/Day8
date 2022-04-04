#!/bin/bash -x

declare -A sounds
sounds[dog]="bark"
sounds[cow]="moo"
sounds[bird]="tweet"
sounds[wolf]="howl"

echo "Dog Sound" ${sounds[dog]} #Dog's sound
echo "All Animal Sound" * ${sounds[@]}
echo "All Animal Sound" * ${sounds[*]}
echo "Animals" ${!sounds[@]}
echo "Number of Animals" ${#sounds[@]}
unset sounds[dog] #delete dog
echo "All Animal Sound" * ${sounds[*]}
