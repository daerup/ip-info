#!/bin/sh

while true; do
    ip_info=$(wget -q -O - http://ipinfo.io/ip 2>/dev/null)
    
    if [ -n "$ip_info" ]; then
        city=$(wget -q -O - http://ipinfo.io/city)
        country=$(wget -q -O - http://ipinfo.io/country)
        echo "IP: $ip_info - City: $city - Country: $country"
    else
        echo "No internet connection detected or IP info service unavailable."
    fi
    
    sleep "${INTERVAL}"
done
