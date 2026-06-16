# DevOps Quick Notes 🚀

## Roadmap

- [x] Linux
- [x] Shell Scripting
- [ ] Git & GitHub
- [ ] Build & Containerization
- [ ] CI (Why & What)
- [ ] AWS Deployment
- [ ] CI/CD on AWS
- [ ] Kubernetes Basics

---

# DevOps

**DevOps = Development + Operations**

Goal:

- Automate software delivery
- Improve collaboration
- Faster releases
- Safer deployments
- Easier maintenance

### Software Lifecycle

```text
Plan
 ↓
Develop
 ↓
Build
 ↓
Test
 ↓
Release
 ↓
Deploy
 ↓
Monitor
```

### Incident Priorities

| Priority | Meaning           |
| -------- | ----------------- |
| P0       | Critical outage   |
| P1       | Major issue       |
| P2       | Significant issue |
| P3       | Minor issue       |
| P4       | Low priority      |

Examples:

- P0 → Payment system down
- P4 → UI alignment issue

---

# Linux

### Why Linux?

- Open Source
- Stable
- Secure
- Fast
- Most servers run Linux
- Backbone of DevOps tools

---

## Basic Commands

### Navigation

```bash
pwd
```

Current directory

```bash
ls
```

List files

```bash
ls -l
```

Detailed list

```bash
ls -a
```

Show hidden files

```bash
cd folderName
```

```bash
cd /
```

Root directory

```bash
cd ~
```

Home directory

---

### User & System

```bash
whoami
```

Current user

```bash
uname -a
```

System information

---

### Files & Directories

Create file:

```bash
touch file.txt
```

Create folder:

```bash
mkdir project
```

Delete file:

```bash
rm file.txt
```

Delete folder:

```bash
rm -r project
```

---

### Search

Find file:

```bash
find . -name "file.txt"
```

Search word inside file:

```bash
grep "hello" file.txt
```

---

### Useful Commands

Copy:

```bash
cp file1.txt file2.txt
```

Move/Rename:

```bash
mv old.txt new.txt
```

Show file content:

```bash
cat file.txt
```

View first lines:

```bash
head file.txt
```

View last lines:

```bash
tail file.txt
```

Clear terminal:

```bash
clear
```

---

# Shell Scripting

## What is a Script?

A text file containing Linux commands executed by Bash.

---

## Create Script

```bash
nano firstscript.sh
```

Example:

```bash
#!/bin/bash

echo "Hello World"
```

---

## Make Executable

```bash
chmod +x firstscript.sh
```

`+x` = Execute permission

---

## Run Script

```bash
./firstscript.sh
```

Output:

```text
Hello World
```

---

# Variables

```bash
#!/bin/bash

name="Anuj"

echo $name
```

Output:

```text
Anuj
```

---

# User Input

```bash
#!/bin/bash

read name

echo "Hello $name"
```

Input:

```text
Anuj
```

Output:

```text
Hello Anuj
```

---

# If Else

```bash
#!/bin/bash

number=5

if [ $number -gt 3 ]; then
  echo "Greater"
else
  echo "Smaller"
fi
```

Output:

```text
Greater
```

---

## Comparison Operators

| Operator | Meaning          |
| -------- | ---------------- |
| -eq      | Equal            |
| -ne      | Not Equal        |
| -gt      | Greater Than     |
| -lt      | Less Than        |
| -ge      | Greater or Equal |
| -le      | Less or Equal    |

Example:

```bash
if [ $number -eq 5 ]; then
```

---

# For Loop

```bash
for i in 1 2 3
do
  echo $i
done
```

Output:

```text
1
2
3
```

---

# While Loop

```bash
count=1

while [ $count -le 3 ]
do
  echo $count
  count=$((count+1))
done
```

Output:

```text
1
2
3
```

---

# Functions

```bash
hello() {
  echo "Hello DevOps"
}

hello
```

Output:

```text
Hello DevOps
```

---

# Comments

Single Line:

```bash
# This is a comment
```

---

# File Permissions

```bash
-rwxr-xr-x
```

Meaning:

```text
Owner  Group  Others
rwx    r-x    r-x
```

| Symbol | Meaning |
| ------ | ------- |
| r      | Read    |
| w      | Write   |
| x      | Execute |

Check permissions:

```bash
ls -l
```

---

# DevOps Commands You'll Use Daily

```bash
pwd
ls -la
cd
mkdir
touch
cat
grep
find
cp
mv
rm
chmod
nano
```

---

# Next Topic

```text
Linux ✅
Shell Scripting ✅
Git & GitHub ⏭️
Docker ⏭️
CI/CD ⏭️
AWS ⏭️
Kubernetes ⏭️
```

This covers about **80% of Linux + Shell Scripting** concepts you'll repeatedly use as a beginner DevOps engineer.

#### Git and Github -- Next Topic
