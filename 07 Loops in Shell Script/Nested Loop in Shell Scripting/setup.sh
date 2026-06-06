echo "Implementing the Nested Loop in shell Scripting "

for i in {1..3}
do
    for j in {1..3}
    do
        echo "Outer Loop: $i, Inner Loop: $j"
    done
done

echo "Printing Matrix using Nested Loop"
read -p "Enter the Rows: " rows
read -p "Enter the Columns: " cols
for i in $(seq 1 $rows)
do
    for j in $(seq 1 $cols)
    do
        echo -n "* "
    done
    echo ""
done

echo "Printing Matrix using Nested Loop using C-style for loop"
read -p "Enter the Rows: " rows
read -p "Enter the Columns: " cols
for ((i=1; i<=rows; i++))
do
    for ((j=1; j<=cols; j++))
    do
        printf "* "
    done
    printf "\n"
done
exit $?