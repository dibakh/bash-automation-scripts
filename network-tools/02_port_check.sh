#!/bin/bash
nc -zv localhost 22 && echo "Port 22 open" || echo "Port 22 closed"