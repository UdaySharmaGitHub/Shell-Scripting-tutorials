#!/bin/bash
# while [ condition ]
# do
    # code to be executed
# done

# 👉 ((count++)) = increment operator
# Same as:
# count=$((count + 1))
count=1
while [ $count -le 3 ]
do
  echo $count
  ((count++))
done

echo "✅ Variations of WHILE LOOP"
echo "🔹 1. Infinite Loop "
# while true
# do
#   echo "Running..."
# done
# ⚠️ Use Ctrl + C to stop

echo "🔹 2. Reading File Line-by-Line"
while read line
do
  echo $line
done < hello.txt
# ✔ Very important in DevOps
 
echo "🔹 3. Waiting for Condition"
while ! ping -c 1 google.com
do
  echo "Waiting for internet..."
  sleep 2
done
# ✔ Used in automation scripts


echo "🔥 Real DevOps Example (WHILE LOOP)"
while true
do
  df -h
  sleep 5
done
# ✔ Monitors disk usage every 5 seconds

exit $?