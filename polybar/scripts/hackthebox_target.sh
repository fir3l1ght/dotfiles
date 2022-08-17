#!/bin/sh

ip_address=$(cat /home/th3jung13r/.config/bin/target | awk '{print $1}')

if [ $ip_address ]; then
	echo "%{F#e51d0b}什 %{u-}${F#ffffff}$ip_address"
else
	echo "%{F#e51d0b}ﲅ %{u-}%{F#e51d0b} No target"
fi
