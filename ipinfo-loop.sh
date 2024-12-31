#!/bin/sh

while true; do
    if wget -q --timeout=3 --spider http://google.com; then
        ip_info=$(wget -q -O - http://ipinfo.io/ip)
        city=$(wget -q -O - http://ipinfo.io/city)
        country=$(wget -q -O - http://ipinfo.io/country)
        echo "IP: $ip_info - City: $city - Country: $country"
    else
        echo "No internet connection detected. Is the Kill Switch enabled?"
    fi
    sleep 5
done
