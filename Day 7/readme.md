<img width="1443" height="861" alt="image" src="https://github.com/user-attachments/assets/56bf4fa1-5b0a-477e-9322-2d2871dac384" />


# Day 7: Launching My First AWS EC2 Instance & SSH Troubleshooting ☁️

After spending the last week on networking and cloud theory, I finally got to build something real. Today's entire focus was on provisioning a server in the cloud and successfully connecting to it.

Here is exactly what I did, the configurations I used, and the roadblock I hit along the way.

## 1. Launching the AWS EC2 Instance
I logged into the AWS Console to spin up a basic server. Here is my exact configuration:
* **OS:** Amazon Linux 2023 
* **Instance Type:** `t2.micro` (because it's Free Tier eligible—keeping an eye on the billing!)
* **Key Pair:** Created a new `.pem` file and downloaded it to my laptop. This is crucial for securely logging in later.
* **Security Group:** I created a rule to allow Inbound SSH traffic on Port 22.

## 2. The SSH Connection (and Troubleshooting!)
To connect to the server, I opened Git Bash on my laptop. 

**The exact command I used:**
`ssh -i "my-aws-key.pem" ec2-user@<my-ec2-public-ip>`

**🚧 Roadblock & Troubleshooting:** When I first tried to connect, my terminal just froze and eventually gave me a "Connection timed out" error. 

* **The fix:** Instead of panicking, I went back to the AWS console and checked my Security Group rules. I realized I hadn't properly set the Inbound Rule to allow Port 22 from "My IP". The firewall was doing its job and blocking me! Once I updated the rule to allow my IP address, the SSH command worked instantly and my prompt changed to `[ec2-user@ip-...]`. 

Getting that connection to work was a great feeling. Tomorrow, I'll dive into the Linux command line!
