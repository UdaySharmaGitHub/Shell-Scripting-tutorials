echo "Loop Control Statements in Shell Script"
echo "✅ break (Exit Loop)"
for i in {1..5}
do
  if [ $i -eq 3 ]
  then
    break
  fi
  echo $i
done
echo "✔ Output: 1 2"
 
echo "✅ continue (Skip iteration)"
for i in {1..5}
do
  if [ $i -eq 3 ]
  then
    continue
  fi
  echo $i
done
echo "✔ Outputs: 1 2 4 5"
