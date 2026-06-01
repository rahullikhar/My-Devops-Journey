<img width="1438" height="1061" alt="image" src="https://github.com/user-attachments/assets/e5542c45-7629-44bd-920e-4f8fb14a1648" />


# Day 17: Text Processing & Filtering (`grep` & `vim`) 🔍

Today I shifted my focus from system administration to text processing. In DevOps, servers generate massive log files, and finding specific errors manually is impossible. Today I learned how to use `grep` to filter and search through data instantly.

Here is the log of the commands and flags I practiced today.

## 1. Terminal Text Editing (`vim`)
Before searching through text, I needed a file to practice on. I used `vim`, a powerful terminal-based text editor, to create and populate my lab file.

```bash
# Created a new directory for the lab
mkdir text_lab
cd text_lab

# Opened/Created a file using the vim editor
sudo vim data.txt

# Viewed the contents to verify my edits
cat data.txt
```
# 2. Searching with grep
grep (Global Regular Expression Print) searches a file for a specific pattern of characters. By default, it is strictly case-sensitive.
## Basic case-sensitive searches
grep 'ankush' file1.txt
grep 'devop' data.txt


# 3. The Power Flags (-i, -v, -n, -c)
To make grep truly useful, I learned how to apply command-line flags to modify how the search behaves.
 
 **1. Ignore Case (-i)**
 **This will successfully find 'devops', 'DevOps', 'DEVOPS', etc.**
 
grep -i 'devops' data.txt

**2. Invert Match (-v)**
**This acts as a reverse filter. It prints every line that DOES NOT contain the word 'bash'.**

grep -v 'bash' data.txt

**3. Show Line Numbers (-n)**
**Prints the matching line of text along with its exact line number in the file.**

grep -n 'developers' data.txt

**4. Count Occurrences (-c)**
**Instead of printing the text, it just returns a number showing how many times the string appeared.**

grep -c '/bin/bash' data.txt


