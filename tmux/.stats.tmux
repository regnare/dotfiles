#!/bin/bash
#][ #[fg=cyan]#(date +\"%a %b %d\")#[fg=green] ][ #[bold]#(date +%R)#[nobold] ]
echo -n "][ #[fg=cyan]"
awk '{printf "%02dd:%02dh:%02dm", int($1/86400), int(($1%86400)/3600), int(($1%3600)/60)}' /proc/uptime
echo -n "#[fg=green] ][ #[bold]"
awk '{printf "%.2f, %.2f, %.2f", $1, $2, $3}' /proc/loadavg
echo -n "#[nobold] ]"
