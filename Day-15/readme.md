<img width="1437" height="1046" alt="image" src="https://github.com/user-attachments/assets/df3bed62-0101-4f19-a0e1-dbd4a8c20b8a" />

# Day 15: Advanced Special Permissions (SUID & SGID) 🔒

Today I moved beyond standard `rwx` permissions and explored special permission bits that temporarily elevate privileges or change inheritance rules. 

## 1. SUID (Set User ID)
SUID is used on executable files. It allows a user to execute a file with the permissions of the file's *owner* rather than the permissions of the user running the command.

```bash
# Locate an existing SUID file to study (like passwd)
ls -l /usr/bin/passwd
# Output shows: -rwsr-xr-x (Notice the 's' instead of 'x' in the user block)

# How to apply SUID to your own executable script
sudo chmod u+s my_script.sh

# How to apply SUID using absolute/numeric mode (Add 4000)
sudo chmod 4755 my_script.sh
Note: SUID is very dangerous if applied to the wrong scripts, as it can allow users to escalate their privileges to root!
```
# 2. SGID (Set Group ID)
While SGID can be applied to files, I focused on its primary DevOps use case: Directories. When SGID is set on a directory, files created inside it inherit the group ownership of the directory, not the user creating the file.
```
# 1. Create a shared team directory
sudo mkdir /opt/project

# 2. Assign the directory to the 'devops' group
sudo chgrp devops /opt/project

# 3. Apply the SGID bit to the directory
sudo chmod g+s /opt/project

# 4. Verify the permissions
ls -ld /opt/project
# Output shows: drwxrwsr-x (Notice the 's' in the group block)

# How to apply SGID using absolute/numeric mode (Add 2000)
sudo chmod 2775 /opt/project
```

Why this matters: Now, if I create app.py inside /opt/project, the file will automatically be owned by the devops group, meaning my teammates can immediately collaborate on it without me having to run chgrp manually every time.
