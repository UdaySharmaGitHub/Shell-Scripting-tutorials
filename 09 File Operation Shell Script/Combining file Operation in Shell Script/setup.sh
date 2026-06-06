#!/bin/bash

# 🔹 5. Combining File Operations in Scripts

# ✅ Example 1: Log Writer Script
echo "Script started at $(date)" >> log.txt
echo "Running process..." >> log.txt
# ✔ Appends logs continuously

# ✅ Example 2: Read + Process File
while read user
do
  echo "Creating user: $user"
done < users.txt
# ✔ Used in automation

# ✅ Example 3: Backup Script
backup_file="backup_$(date +%F).tar.gz"
tar -czf $backup_file /home
echo "Backup created: $backup_file" >> backup.log