#!/bin/bash
time=$(date +'%Y-%b-%d ⋮ %T')
mem=$(free -h | sed -e '1d;$d' | awk '{print $3}')

while true; do echo -e "$mem  $time" ;done
