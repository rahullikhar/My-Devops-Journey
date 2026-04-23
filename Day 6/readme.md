# Day 6: Connecting to AWS EC2 & Practice with Linux Commands 🐧

Today’s goal was to actually connect to the virtual server (EC2 instance) I created and start getting comfortable using the command line inside it.

# **1. Connecting via SSH**:
To connect to the EC2 instance from my laptop, I used the SSH (Secure Shell) command in my Bash terminal.

**Here’s the basic idea of the command I used:**
ssh -i "my-key-pair.pem" ec2-user@<ec2-public-ip-address>

ssh: The command to start the connection.

-i "my-key-pair.pem": This tells SSH to use the private key file I downloaded from AWS for authentication.

**ec2-user: This is the default username for Amazon Linux instances.**

**<ec2-public-ip-address>:** The public IP address of my specific EC2 instance.

# 2. Basic Linux Commands Practiced
Once I was successfully logged into the EC2 instance, I practiced these basic Linux commands:

**pwd (Print Working Directory):** Shows the full path of the current folder I am in.

**ls (List):** Lists all the files and folders in the current directory.

**cd (Change Directory):** Used to move between folders (e.g., cd .. moves up one level).

**mkdir (Make Directory):** Creates a new, empty folder.

**touch:** Creates a new, empty file.


