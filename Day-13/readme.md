<img width="1439" height="1059" alt="image" src="https://github.com/user-attachments/assets/ffa2b27b-e8a7-41bc-8269-21f2aa3555c8" />

# Day 13: Mastering Linux File & Directory Permissions (`chmod`) 🔐

Today I focused entirely on Linux security and access control. I practiced modifying file and directory permissions using both Absolute (Numeric) and Symbolic modes to understand exactly how to restrict or grant access to different users.

Here is a log of my experiments, the commands I used, and the roadblocks I hit.

## 1. Absolute Mode (The Numbers Game)
I learned that permissions are calculated using a numeric system: Read (4), Write (2), and Execute (1). 

```bash
# 1. Granting mixed permissions
# 7 (Owner: rwx), 6 (Group: rw-), 4 (Others: r--)
chmod 764 file1.txt

# 2. Locking a file down completely
# 4 (Owner: r--), 0 (Group: ---), 0 (Others: ---)
chmod 400 file1.txt

# 3. Opening a file to everyone (Usually a bad idea in production!)
chmod 777 file1.txt

# 4. Standard secure file permissions
chmod 644 file1.txt
```
**Testing it:** To prove these worked, I used `su nitesh` and `su anurag` to switch into other accounts. When the file was set to `400`, those users were completely blocked from reading the file!

## 2. Symbolic Mode (The Letters Game)
Instead of calculating numbers, I practiced adding (`+`), removing (`-`), or setting exactly (`=`) permissions for the User (`u`), Group (`g`), or Others (`o`).

```bash
# Add execute permission for the file owner
chmod u+x file1.txt

# Explicitly set the owner to ONLY have read and execute (removes write)
chmod u=r-x file1.txt

# Remove read permission from the group
chmod g-r file1.txt

# Explicitly give "others" full control
chmod o=rwx file1.txt
```

## 3. Directory Permissions (The Big Lesson)
I ran an experiment to see how directory permissions differ from standard files. 

```bash
# 1. Created a new directory
mkdir dir1

# 2. Set the directory to Read-Only for the owner
chmod 400 dir1/

# 3. Tried to enter the directory
cd dir1/
# Result: Permission Denied!
```
**What I learned:** For a standard file, `Read (4)` lets you see what's inside. But for a directory, you **must** have the `Execute (1)` permission just to *enter* the folder using the `cd` command. 

```bash
# 4. The Fix: Added the execute bit (4 + 1 = 5)
chmod 500 dir1/
cd dir1/ 
# Result: Successfully entered the directory!
```

## 🚧 Mistakes & Troubleshooting

The terminal keeps you humble! Here are the syntax errors and typos I made today:

* **Mistake 1 (Case Sensitivity):** I ran `echo "New Line" >> File1.txt` instead of `file1.txt`. Linux didn't throw an error; it just created a brand new file with a capital "F". I had to realize my mistake and run `rm File1.txt` to clean up my directory.
* **Mistake 2 (Typos):** While trying to test permissions, I repeatedly misspelled the user I was trying to switch into (`su anuran`, `su anurang`, `su anurag`). 

Every mistake is helping me build better muscle memory in the CLI. 
```
