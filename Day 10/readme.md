<img width="961" height="716" alt="image" src="https://github.com/user-attachments/assets/c6bf3b24-835d-4986-973e-efe7c006d244" />


# Day 10: Linux File Linking (Hard Links Experiment) 🔗

Today I explored how Linux handles file data under the hood by practicing with Hard Links. I ran an experiment to see what happens to a hard link when the original file is deleted. 

Here is a log of my exact terminal session and what I learned.

## The Experiment: Creating and Breaking a Hard Link

```bash
# 1. I started by creating a hard link to my existing file
ln file1.txt file2.txt

# 2. I checked the files using the -i flag to see their 'inodes' (data IDs)
ls -li
# Output showed both files shared the exact same inode: 262378
# The link count for the inode was 2.

# 3. I verified the data inside the new hard link
cat file2.txt
# Output: Hello Devops

# 4. THE TEST: I deleted the original file
rm file1.txt

# 5. I checked if my data survived in the hard link
cat file2.txt
# Output: Hello Devops (The data was still there!)

# 6. I checked the inodes one last time
ls -li
# Output showed file2.txt still had the same inode (262378), but the link count dropped from 2 to 1.
