#!/bin/bash
# Create. a file for reading operations
cat > test.txt <<EOF
This is a sample file for reading operations.
It contains multiple lines of text.
You can use this file to practice reading operations in shell scripting.
EOF

# 🔹 3. Reading from Files
####################################################################################
# ✅ 3.1 Using < (Input Redirection)
cat < test.txt
# ✔ Reads file content and passes as input
# But usually we use:
cat test.txt

####################################################################################
# ✅ 3.2 Reading Line by Line (Very Important)
while read line
do
    echo "$line"
done < test.txt
# ✔ Best practice for reading files in scripts

####################################################################################
# Examnple:
while read name
do
  echo "Hello $name"
done < names.txt

####################################################################################
# ✅ 3.3 Using read with File Descriptor
exec < test.txt
read line
echo $line

####################################################################################
# ✅ 3.4 Using awk / cut (Advanced Reading)
awk '{print $1}' test.txt
cut -d',' -f1 test.txt

# ✔ Used in DevOps for parsing logs/configs
####################################################################################
####################################################################################
