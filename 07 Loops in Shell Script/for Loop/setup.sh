#!/bin/bash
# Loops in Shell Script

# 🔸 1. FOR LOOP (Detailed)
# A for loop is used when you know how many times you want to run something or when iterating over a list.
# ✅ Basic Syntax
# for variable in list
# do
#   commands
# done
for i in 1 2 3 4 5
do
  echo "Iteration $i"
done

# ✅ Different Ways to Use FOR LOOP
# 🔹 1. Using Range {}
for i in {1..5}
do
  echo "Range Iteration $i"
done
# ✔ Output: 1 to 5
# ✔ Cleaner and faster

# 🔹 2. C-style For Loop (Very Important)
for (( i=1; i<=5; i++ ))
do
  echo $i
done
# ✔ Similar to C/Java
# ✔ Best for numeric operations

# 🔹 3. Loop Through Files
for file in *.txt
do
  echo $file
done
# ✔ Processes all .txt files
# ✔ Used in automation scripts

# 🔹 4. Loop Through Array
arr=(apple banana mango)
for item in "${arr[@]}"
do
  echo $item
done

# 🔹 5. Loop Through Command Output
# hello.txt contains: "this is text file for the reference"
for user in $(cat hello.txt)
do
  echo $user
done

# ⚠️ Used carefully (word splitting issues)
# 🔥 Real DevOps Example (FOR LOOP)
# docker ps gives a list of running containers, we can loop through them to stop each one
# docker ps -q gives only container IDs, which is ideal for looping
# docker ps -qa gives all container IDs (running and stopped), which is useful for cleanup scripts
for container in $(docker ps -q)
do
  docker stop $container
done
# ✔ Stops all running containers

exit $?


