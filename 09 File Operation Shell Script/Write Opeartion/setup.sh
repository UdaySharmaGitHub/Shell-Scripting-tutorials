#!/bin/bash

# 🔹 2. Writing to Files (Output Redirection)"
# ✅ 2.1 Overwrite (>)"
# "Writes output to a file (replaces existing content
echo "Hello DevOps" > test.txt
# 📌 If file exists → content is overwritten
# 📌 If file doesn’t exist → file is created

# 🔍 Example
echo "First Line" > test.txt
echo "Second Line" > test.txt
# 👉 Final content:
# Second Line
# ✔ Because > overwrites

####################################################################################
# ✅ 2.2 Append (>>)
# Adds content without deleting existing data
echo "Hello" >> test.txt.  # initially appends "Hello" to test.txt
# 🔍 Example
echo "First Line" > test.txt. # Overwrite with "First Line"
echo "Second Line" >> test.txt # Append "Second Line"
# 👉 Final content:
# First Line
# Second Line

####################################################################################
# ✅ 2.3 Writing Command Output to File
date > date.txt # Writes current date and time to date.txt
ls -l >> files.txt # Appends detailed list of files to files.txt
# ✔ Stores command output into files

####################################################################################
# ✅ 2.4 Writing Multiple Lines
cat > Writing-multiple-lines.txt <<EOF
Hello
This is a file containing multiple lines.
which is created using a shell script.
hope you understand how to write multiple lines to a file using a shell script.
EOF

# ✔ Called Here Document (Heredoc)
# ✔ Useful in automation scripts