# Shell Scripting Tutorials

A structured, hands-on repository for learning Shell Scripting from the ground up. Each folder covers a specific topic with working `.sh` scripts and examples.

---

## Table of Contents

1. [Intro to Shell Scripting](#01-intro-to-shell-scripting)
2. [Printing in Shell Script](#02-printing-in-shell-script)
3. [Comments in Shell Scripting](#03-comments-in-shell-scripting)
4. [Variables in Shell Script](#04-variables-in-shell-script)
5. [Input in Shell Script](#05-input-in-shell-script)
6. [Operators in Shell Script](#06-operators-in-shell-script)
7. [Loops in Shell Script](#07-loops-in-shell-script)
8. [Functions in Shell Script](#08-functions-in-shell-script)
9. [File Operations in Shell Script](#09-file-operations-in-shell-script)

---

## 01 Intro to Shell Scripting

**Path:** [01 Intro Shell Script/](./01%20Intro%20Shell%20Script/setup.sh)

Covers what shell scripting is and how to create and run your first script. Demonstrates using a shell script to automate project setup (creating directories and files).

**Key concepts:**
- Shebang line (`#!/bin/bash`)
- Creating directories and files with `mkdir` and `touch`
- Running a shell script to automate tasks

```bash
#!/bin/bash
mkdir 01_intro_shell_using_shell_script
cd 01_intro_shell_using_shell_script
touch app.java
echo "Project Created successfully Using Shell Script"
```

---

## 02 Printing in Shell Script

**Path:** [02 Printing using Shell Script/](./02%20Printing%20using%20Shell%20Script/setup.sh)

Covers basic output commands in shell scripting.

**Key concepts:**
- `echo` — print text to the terminal
- `date` — print the current date and time
- `pwd` — print the current working directory

```bash
echo "Hello"
date
pwd
```

---

## 03 Comments in Shell Scripting

**Path:** [03 Comments in Shell Scripting/](./03%20Comments%20in%20Shell%20Scripting/setup.sh)

Covers how to write single-line comments to document and disable code.

**Key concepts:**
- `#` for single-line comments
- Commenting out code to disable execution
- Inline comments

```bash
# This is a comment and will not be executed
echo "This line will be executed"
```

---

## 04 Variables in Shell Script

**Path:** [04 Variable in Shell Script/](./04%20Variable%20in%20Shell%20Script/setup.sh)

Covers variable declaration, case sensitivity, command substitution, and quote behavior.

**Key concepts:**
- Declaring variables (`name="Desmond"`) — no spaces around `=`
- Case sensitivity (`name` vs `Name` are different variables)
- Command substitution (`current_date=$(date)`)
- Double quotes `" "` — allow variable expansion
- Single quotes `' '` — treat everything literally
- Exit status (`$?`) — `0` for success, non-zero for failure

```bash
name="Desmond"
echo "Hello $name"       # prints: Hello Desmond
echo 'Hello $name'       # prints: Hello $name

current_date=$(date)
echo $current_date
```

---

## 05 Input in Shell Script

**Path:** [05 Input In Shell Script/](./05%20Input%20In%20Shell%20Script/setup.sh)

Covers reading user input interactively during script execution.

**Key concepts:**
- `read` — reads input into a variable
- `read -p "prompt: " variable` — displays a prompt before reading
- Positional parameters (`$1`, `$2`) for passing arguments

```bash
read -p "Enter name: " name
echo "Hello, My name is: $name"
```

---

## 06 Operators in Shell Script

**Path:** [06 Operators in Shell Script/](./06%20Operators%20in%20Shell%20Script/setup.sh)

Covers arithmetic and relational operators with a full interactive demo script.

**Key concepts:**
- Arithmetic: `+`, `-`, `*`, `/`, `%` using `$(( ))`
- Increment / Decrement: `((a++))`, `((b--))`
- Relational operators: `-eq`, `-ne`, `-gt`, `-lt`, `-ge`, `-le`

```bash
echo "Addition: $((a + b))"
echo "Multiplication: $((a * b))"

if [ $a -gt $b ]; then
  echo "a is greater than b"
fi
```

---

## 07 Loops in Shell Script

**Path:** [07 Loops in Shell Script/](./07%20Loops%20in%20Shell%20Script/)

Covers all major loop types, control statements, and nested loops.

### For Loop

**Path:** [07 Loops in Shell Script/for Loop/](./07%20Loops%20in%20Shell%20Script/for%20Loop/setup.sh)

- Basic `for` loop over a list
- Range-based loop `{1..5}`
- C-style loop `(( i=1; i<=5; i++ ))`
- Looping through files (`*.txt`)
- Looping through arrays
- Looping through command output

```bash
for i in {1..5}; do echo $i; done

for (( i=1; i<=5; i++ )); do echo $i; done

arr=(apple banana mango)
for item in "${arr[@]}"; do echo $item; done
```

### While Loop

**Path:** [07 Loops in Shell Script/While Loop/](./07%20Loops%20in%20Shell%20Script/While%20Loop/setup.sh)

- Basic `while` loop with a counter
- Infinite loop pattern
- Reading a file line-by-line
- Waiting for a condition (polling pattern)
- Real DevOps example: disk usage monitor

```bash
while [ $count -le 3 ]; do
  echo $count
  ((count++))
done

while read line; do
  echo $line
done < hello.txt
```

### Loop Control Statements

**Path:** [07 Loops in Shell Script/Loop Control Statements/](./07%20Loops%20in%20Shell%20Script/Loop%20Control%20Statements/setup.sh)

- `break` — exit the loop early
- `continue` — skip the current iteration

```bash
for i in {1..5}; do
  if [ $i -eq 3 ]; then break; fi
  echo $i
done
```

### Nested Loops

**Path:** [07 Loops in Shell Script/Nested Loop in Shell Scripting/](./07%20Loops%20in%20Shell%20Script/Nested%20Loop%20in%20Shell%20Scripting/setup.sh)

- Nested `for` loops
- Printing a matrix using `seq` and C-style loops

```bash
for i in {1..3}; do
  for j in {1..3}; do
    echo "Outer: $i, Inner: $j"
  done
done
```

---

## 08 Functions in Shell Script

**Path:** [08 Function in Shell Script/](./08%20Function%20in%20Shell%20Script/setup.sh)

Covers defining and calling functions, passing arguments, returning values, and variable scoping.

**Key concepts:**
- Function definition and calling
- Passing arguments (`$1`, `$2`)
- Returning values via `echo` (most common) or `return` (integers only)
- Local variables with `local` keyword vs global variables
- Functions with conditional logic
- Recursive functions
- Functions containing loops
- Calling a function from inside another function

```bash
greet() {
  echo "Hello $1 $2"
}
greet "Uday" "Sharma"

get_sum() {
  echo $(($1 + $2))
}
result=$(get_sum 5 10)
echo "Result is $result"

factorial() {
  if [ $1 -le 1 ]; then echo 1
  else
    local prev=$(factorial $(( $1 - 1 )))
    echo $(( $1 * prev ))
  fi
}
```

---

## 09 File Operations in Shell Script

**Path:** [09 File Operation Shell Script/](./09%20File%20Operation%20Shell%20Script/)

Covers all core file operations: writing, reading, permissions, and combining them in real scripts.

### Writing to Files

**Path:** [09 File Operation Shell Script/Write Opeartion/](./09%20File%20Operation%20Shell%20Script/Write%20Opeartion/setup.sh)

- `>` — overwrite a file
- `>>` — append to a file
- Writing command output to a file
- Here Document (Heredoc) for writing multiple lines

```bash
echo "First Line" > test.txt        # overwrite
echo "Second Line" >> test.txt      # append

cat > multiline.txt <<EOF
Hello
This is a multi-line file.
EOF
```

### Reading Files

**Path:** [09 File Operation Shell Script/Reading Operation/](./09%20File%20Operation%20Shell%20Script/Reading%20Operation/setup.sh)

- `cat` for simple file reading
- `while read line` for line-by-line processing (best practice)
- File descriptor with `exec`
- `awk` and `cut` for parsing structured data

```bash
while read line; do
  echo "$line"
done < test.txt

awk '{print $1}' test.txt
cut -d',' -f1 test.txt
```

### File Permissions

**Path:** [09 File Operation Shell Script/file Permission/](./09%20File%20Operation%20Shell%20Script/file%20Permission/setup.sh)

- Permission types: `r` (read), `w` (write), `x` (execute)
- Checking permissions with `ls -l`
- `chmod` with numeric method (`755`, `644`) and symbolic method (`+x`, `u+x`)
- Permission structure: Owner | Group | Others

```bash
chmod 755 setup.sh   # rwxr-xr-x
chmod +x setup.sh    # add execute for all
```

### Combining File Operations

**Path:** [09 File Operation Shell Script/Combining file Operation in Shell Script/](./09%20File%20Operation%20Shell%20Script/Combining%20file%20Operation%20in%20Shell%20Script/setup.sh)

Real-world examples combining multiple file operations:

- Log writer script
- Read and process a list from a file
- Automated backup script

```bash
# Log writer
echo "Script started at $(date)" >> log.txt

# Process user list
while read user; do
  echo "Creating user: $user"
done < users.txt

# Backup script
backup_file="backup_$(date +%F).tar.gz"
tar -czf $backup_file /home
echo "Backup created: $backup_file" >> backup.log
```

---

## How to Run a Script

```bash
# Give execute permission
chmod +x setup.sh

# Run the script
./setup.sh
```

---

## Prerequisites

- macOS / Linux terminal (or WSL on Windows)
- Bash shell (`bash --version` to check)

---

## License

[MIT](LICENSE)
