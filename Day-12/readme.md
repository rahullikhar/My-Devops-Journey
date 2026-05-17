<img width="1440" height="1041" alt="image" src="https://github.com/user-attachments/assets/94ded108-40c1-4a88-ad85-7786a322f7e5" />
<img width="1440" height="1046" alt="image" src="https://github.com/user-attachments/assets/e9116a45-b643-41da-abc2-28485cf0b311" />


# Day 12: User, Group, and Security Management in CentOS 👥🔒

Today I acted as the `root` administrator to learn exactly how Linux handles permissions, user accounts, and groups under the hood. 

Here is the log of the commands I practiced to manage the people and services on my server.

## 1. Creating and Managing Users
I created several dummy users (Anurag, Nitesh, Nikhil) to practice account manipulation.

```bash
# Create a basic user
sudo useradd anurag

# Create a user and force the creation of their /home directory
sudo useradd -m nitesh

# The All-in-One Command: Create user, make home dir, add a full name comment, and set bash as the default shell
sudo useradd -m -c "Nikhil Khode" nikhil -s /bin/bash

# Set or unlock a user's password
sudo passwd anurag
sudo passwd -u anurag

# Switch into the new user's account to test it
su anurag
```

## 2. Creating and Managing Groups
In DevOps, we manage permissions by groups (like putting all developers in one group). I created groups for `devops`, `testing`, and `docker`.

```bash
# Create new empty groups
sudo groupadd testing
sudo groupadd devops

# Safely add an existing user to a group (Crucial: -aG appends them without removing them from other groups!)
sudo usermod -aG testing nitesh

# Remove a user from a specific group
sudo gpasswd -d anurag testing

# Delete a group entirely
groupdel testing
```

## 3. Viewing System Information & Security Files
To verify my work, I learned how to read the core files where Linux actually stores this user data.

```bash
# See my current user name
whoami

# Check a specific user's ID and group memberships
id nitesh

# View the master list of all users on the system
cat /etc/passwd

# View the highly secure, encrypted passwords for all users (requires root)
cat /etc/shadow

# View the master list of all groups
cat /etc/group

# Search to see if a specific group exists and who is inside it
getent group devops
```
