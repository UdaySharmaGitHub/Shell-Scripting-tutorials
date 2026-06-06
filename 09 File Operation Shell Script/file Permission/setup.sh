# 🔹 4. File Permissions in Shell Scripting
# Every file in Linux has permissions.

####################################################################################
# 🔸 4.1 Permission Types
echo "Permission	Meaning"
echo "r	Read"
echo "w	Write"
echo "x	Execute"

####################################################################################
# 🔸 4.2 Check Permissions
ls -l setup.sh
# Example output:
echo "-rwxr-xr-x@ 1 <System_ID>  staff  1313 Mar 20 22:57 setup.sh"

####################################################################################
# 🔸 4.3 Permission Structure
# -rwxr-xr--
# │ │ │
# │ │ └── Others
# │ └──── Group
# └────── Owner

####################################################################################
# 🔸 4.4 Using chmod (Change Permissions)
# ✅ Numeric Method
chmod 755 setup.sh
ls -l setup.sh

# Number	Permission
# 7	rwx
# 6	rw-
# 5	r-x
# 4	r--

# Individual permissions can be combined to form the numeric representation:
# 1 -> Execute (x)
# 2 -> Write (w)
# 4 -> Read (r)

# 🔍 Example
chmod 755 setup.sh
# 👉 Meaning:
# Owner → rwx
# Group → r-x
# Others → r-x

# ✅ Symbolic Method
chmod +x setup.sh

# ✔ Adds execute permission
chmod u+x setup.sh
# ✔ User gets execute permission

####################################################################################
# 🔸 4.5 Why Permissions Are Important
# Without execute permission:
# ./setup.sh
# ❌ Error:
# Permission denied
# ✔ Fix:
chmod +x setup.sh