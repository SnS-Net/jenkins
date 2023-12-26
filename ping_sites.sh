#!/bin/bash

# Function to display date and time
show_date_time() {
    echo "Current Date and Time: $(date)"
}

# Function to ping a given host
ping_host() {
    host=$1
    echo "Pinging $host..."
    if ping -c 3 "$host" >/dev/null 2>&1; then
        echo "$host is reachable."
    else
        echo "$host is not reachable."
    fi
    echo
}

# Display date and time
show_date_time

# Ping Google
ping_host "google.com"

# Ping Yahoo
ping_host "yahoo.com"

# Ping MSN
ping_host "msn.com"
