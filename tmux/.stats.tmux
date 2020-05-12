#!/bin/bash
#][ #[fg=cyan]#(date +\"%a %b %d\")#[fg=green] ][ #[bold]#(date +%R)#[nobold] ]
echo -n "][ "
awk '{printf "%.2f", $1}' /proc/loadavg
echo -n " ][ #[fg=cyan]#[bold]"
awk '{printf "%02dd:%02dh:%02dm", int($1/86400), int(($1%86400)/3600), int(($1%3600)/60)}' /proc/uptime
echo -n "#[nobold]#[fg=green] ]"
