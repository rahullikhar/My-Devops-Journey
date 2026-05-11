<img width="1436" height="544" alt="image" src="https://github.com/user-attachments/assets/4942a8bc-10e1-4599-8830-4972c36bdfce" />

# Day 14: Linux Ownership & The Recursive Flag (`chown`, `chgrp`) 🔑

Yesterday, I focused on *permissions* (`chmod`). Today, I shifted focus to *ownership*. I learned how to transfer control of files and directories between different users and groups on the server.

Here is the log of my exact terminal session.

## 1. Changing Group Ownership (`chgrp`)
Sometimes a file needs to be owned by an entire department (like developers) rather than a single user.

```bash
# Change the group ownership of file1.txt to the 'devops' group
sudo chgrp devops file1.txt

# Verify the change
ls -l
```

## 2. Changing User Ownership (chown)
I practiced handing over complete control of a file to another user on the system.
```
# Transfer ownership of file1.txt to the user 'ankush'
    sudo chown ankush file1.txt

# Switch into Ankush's account to verify
    sudo su ankush
    whoami
# Output: ankush

# Test writing to the newly owned file
    echo "i am ubuntu" >> file1.txt
    cat file1.txt
```
## 3. The Combo Command (User + Group)
Instead of running chown and chgrp separately, Linux allows you to do both simultaneously by separating the user and group with a colon (:).
```
# Change owner to 'nitesh' AND group to 'devops'
    sudo chown nitesh:devops dir1/

# Change owner to 'ankush' AND group to 'testing'
    sudo chown ankush:testing dir1/
```
## 4. The Recursive Flag (-R) — The Big Lesson
If you change the ownership of a directory, the files inside that directory don't automatically change. To change the folder and everything inside it all at once, you must use the recursive flag.
```
# 1. Created a file inside dir1/
    cd dir1/
    echo "New Demo file" > demo.txt
    cd ..

# 2. Applied recursive ownership to the directory AND the files inside
    sudo chown -R ankush:devops dir1/

# 3. Verified the directory changed
    ls -l

# 4. Verified the internal file (demo.txt) ALSO changed automatically!
    ls -l dir1/
```

## 🚧 Roadblocks & Typos
Muscle memory can# Brain-fog typos:
cd chown -R xwf
cd chown -R ankush:devops dir1/

# The actual, correct command I meant to type:
sudo chown -R ankush:devops dir1/ sometimes work against you in the terminal. I use the cd (change directory) command so often that my fingers just typed it automatically when I was trying to run my chown commands!
