#!/bin/bash
NUMBER=$(($RANDOM % 7))

for ((run = 1; run <= NUMBER + 1; run++)); do
  echo $(/usr/local/bin/fortune) >/Users/jwonsever/dev_personal/greenery/file.txt
  /usr/bin/git -C /Users/jwonsever/dev_personal/greenery/ commit -am "$(fortune -sn 32)"
  /usr/bin/git -C /Users/jwonsever/dev_personal/greenery/ push
done
