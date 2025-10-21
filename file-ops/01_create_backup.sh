#!/bin/bash
backup_dir="/tmp/backup_$(date +%Y-%m-%d_%H-%M-%S)"
mkdir -p "$backup_dir"
cp -r /etc "$backup_dir"
echo "✅ Backup created at: $backup_dir"