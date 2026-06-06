#!/bin/bash
# ✅ 1.4 Case Sensitivity
# Shell scripting is case-sensitive:
name="Desmond"
Name="John"
# ✔ No spaces around =
# ✅ 1.5 Variables Syntax
# name = "Desmond"   # ERROR
echo $name   # Desmond
echo $Name   # John

current_date=$(date)
echo $current_date #this print date and time

# ✅ 1.6 Command Substitution
# Used to store command output.
current_date=$(date)
echo $current_date

# ✅ 1.7 Quotes Usage
# Double Quotes " " → allow variables
name="Desmond"
echo "Hello $name"
# Single Quotes ' ' → no variable expansion
echo 'Hello $name'

# ✅ 1.8 Exit Status
# Every command returns a status:
# 0 → Success
# Non-zero → Failure
echo $?