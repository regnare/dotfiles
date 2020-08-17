#!/bin/bash
# Print colors:
# for i in {0..255}; do  printf "\x1b[38;5;${i}mcolour%-5i\x1b[0m" $i ; if ! (( ($i + 1 ) % 8 )); then echo ; fi ; done

echo -n "][ "

# CPU load average
echo -n "#[fg=colour168]"
awk '{printf "C:%.2f", $1}' /proc/loadavg
echo -n " #[fg=green]][ "

# Free memory
echo -n "#[fg=colour11]"
awk '/MemFree/{free=$2} /MemTotal/{total=$2} END{printf "M:%.2f%%", ((total-free)*100)/total}' /proc/meminfo
echo -n " #[fg=green]][ "

# Uptime
echo -n "#[fg=cyan]#[bold]"
awk '{printf "U:%02dd:%02dh:%02dm", int($1/86400), int(($1%86400)/3600), int(($1%3600)/60)}' /proc/uptime
echo -n "#[nobold]#[fg=green] ]"
