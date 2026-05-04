# Day 11: Troubleshooting Network Isolation & Launching Apache 🌐🐧

Today I switched my lab environment to CentOS to practice Red Hat-based package management. What started as a simple software installation turned into an excellent networking troubleshooting session, capped off by launching my first web server!

## 🚧 1. The Roadblock: Complete Network Isolation
I attempted to install Git using the CentOS package manager, `yum`:

```bash
sudo yum install git
# Error: [Errno 14] curl#6 - "Could not resolve host: vault.centos.org"
```
The server couldn't connect to the repository. To see if I had any internet access at all, I ran a ping test to Google's public DNS:

```bash
ping -c 4 8.8.8.8
# Result: connect: Network is unreachable
```
**Diagnosis:** The Linux OS didn't have a routing path to the outside world. My network interface (`ens33`) hadn't automatically requested an IP address from the DHCP server when the machine booted.

## 🛠️ 2. The Fix: Manually Requesting an IP
To fix this right from the terminal, I forced the network interface to wake up and ask the router for an IP assignment and gateway path.

```bash
# Force the DHCP client to request an IP for interface ens33
sudo dhclient ens33

# Verify the connection works
ping -c 4 8.8.8.8
# Result: Successful pings!
```
Once connected, my `sudo yum install git -y` command worked perfectly.

## 🖥️ 3. Launching a Web Server (Apache)
With the internet working, I decided to install the Apache web server (`httpd` in CentOS) and turn the server into a live website.

```bash
# 1. Download and install Apache
sudo yum install httpd -y

# 2. Start the web server service
sudo systemctl start httpd

# 3. Enable the service so it starts automatically on system reboot
sudo systemctl enable httpd

# 4. Verify it is running without errors
sudo systemctl status httpd
# Output showed: active (running)
```
```

***

