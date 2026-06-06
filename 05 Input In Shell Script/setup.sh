#!/bin/bash

# 🔸 2.1 Variables
# Store values.
name="DevOps"
echo "Learning $name"
# Types:
# Local variables
# Environment variables
# Positional parameters ($1, $2)


# 🔸 2.2 Input (User Interaction)
read name
echo "Hello $name"
# With prompt:
read -p "Enter name: " name
echo "Hello, My name is: $name"
