<img width="1438" height="1050" alt="image" src="https://github.com/user-attachments/assets/7e3b7c95-c01a-4555-8a6b-cba11f4cb76f" />


# Day 8: Getting My Hands Dirty with Linux Commands 🐧

Yesterday I successfully launched and connected to my AWS EC2 instance. Today was all about treating that server like a sandbox to build my muscle memory for basic Linux navigation. 

Since I don't have a graphical interface (GUI), everything has to be done via the command line.

## 1. Re-Connecting
I opened Git Bash and ran my SSH command to get back into my server:
`ssh -i "my-aws-key.pem" ec2-user@<my-ec2-public-ip>`

## 2. Practicing Linux Commands
Here are the exact commands I ran, step-by-step, to figure out how to navigate, create, and move files around:

```bash
# 1. Figured out exactly where I was located in the server
pwd 
# Output: /home/ec2-user

# 2. Created a new folder to hold my practice work
mkdir my_practice_folder

# 3. Moved inside that new folder
cd my_practice_folder

# 4. Created a bunch of empty text files to play around with
touch file1.txt file2.txt config.yaml

# 5. Checked to see if the files were actually created, including their permissions
ls -l

# 6. Realized I wanted to organize them better, so I made another folder inside
mkdir text_files

# 7. Moved the text files into the new directory
mv file1.txt file2.txt text_files/

# 8. Checked to make sure they moved successfully
ls -l
cd text_files
ls
