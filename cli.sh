#!/bin/bash

case $1 in
    scan)
        nuclei -t /opt/nuclei-config/templates -target $2 ;;
    enumerate)
        subfinder -d $2 ;;
    ports)
        naabu -host $2 ;;
    dns)
        dnsx -d $2 ;;
    analyze)
        python3 /opt/scripts/analyze.py $2 ;;
    *)
        echo "Usage: $0 {scan|enumerate|ports|dns|analyze}" ;;
esac
