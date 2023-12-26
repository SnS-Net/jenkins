#!/bin/bash

# Function to display date and time
show_date_time() {
    echo "Current Date and Time: $(date)"
}

# Function to perform DNS lookup using dig
dns_lookup() {
    host=$1
    echo "Performing DNS lookup for $host..."
    if dig +short "$host" >/dev/null 2>&1; then
        echo "$host is resolvable."
    else
        echo "$host is not resolvable."
    fi
    echo
}

# Display date and time
show_date_time

# Perform DNS lookup for Google
dns_lookup "google.com"

# Perform DNS lookup for Yahoo
dns_lookup "yahoo.com"

# Perform DNS lookup for MSN
dns_lookup "msn.com"
