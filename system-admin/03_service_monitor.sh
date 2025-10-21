#!/bin/bash
services=(ssh nginx)
for s in "${services[@]}"; do systemctl status $s &> /dev/null && echo "$s running" || echo "$s stopped"; done