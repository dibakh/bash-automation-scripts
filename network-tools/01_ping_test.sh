#!/bin/bash
sites=("google.com" "github.com" "stackoverflow.com")
for site in "${sites[@]}"; do ping -c 1 "$site" &> /dev/null && echo "✅ $site is reachable" || echo "❌ $site is not responding"; done