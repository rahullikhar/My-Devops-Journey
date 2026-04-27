# Day 9: System Info, Environment Variables, and The $PATH 🐧

Today I moved past basic file navigation and started looking at how the Linux operating system actually manages itself. I used an Ubuntu EC2 instance on AWS to practice finding system details and tweaking the environment.

Here is a log of exactly what I ran, what I learned, and the typos I had to troubleshoot!

## 1. Checking System Information
I needed to know exactly what OS and kernel version my server was running.

```bash
# Display basic kernel name
uname 
# Output: Linux

# Display the exact kernel release version
uname -r
# Output: 6.14.0-1018-aws

# Display all system information (kernel, architecture, date)
uname -a

# View the specific OS distribution details
cat /etc/os-release
# Output showed I am running Ubuntu 24.04.3 LTS (Noble Numbat)
```


## 2. Exploring Environment Variables
Linux uses environment variables to store data that the shell and other programs need to run properly.

```bash
# Print out ALL environment variables currently set
env

# Print specific variables to see my user and home directory
echo $USER
# Output: ubuntu

echo $HOME
# Output: /home/ubuntu
```

## 3. The $PATH Variable
This is how Linux knows where to find the commands I type (like ls or cd) without me having to type the full file path every time.

```bash
# Find exactly where the 'ls' and 'cp' commands are located
which ls
# Output: /usr/bin/ls

which cp
# Output: /usr/bin/cp

# View the current PATH directories
echo $PATH

# Add a brand new directory to the PATH 
export PATH=$PATH:/opt/test/bin
```

### Important Note: 
When updating the path, writing $PATH: at the beginning is crucial. It means "keep all the old directories, and just add this new one to the end." If I forgot that, I would overwrite the whole path and break my server!

🚧 Roadblocks & Troubleshooting (My Mistakes Today)
The command line is completely unforgiving with syntax and spelling. Here is what I messed up today and how I fixed it:

**Mistake 1:** I tried to set a key-value variable by typing #KEY=VALUE.

**The Fix:** Nothing happened! I quickly realized that in Bash, the # symbol creates a comment. The terminal just ignored me completely.

**Mistake 2:** I was trying to find where the grep command was located and typed which gerp.

**The Fix:** The terminal just returned a blank line. It took me a second to realize I spelled it wrong. Spelling is everything in Linux.

**Mistake 3:** I wanted to read the kernel boot messages, but I kept typing sudo demsg and sudo dmsg.

**The Fix:** I kept getting "Command not found" errors until I finally typed it correctly: sudo dmesg.

**Every typo is helping build my muscle memory. Next up, I plan to dive into user management and file permissions!**
