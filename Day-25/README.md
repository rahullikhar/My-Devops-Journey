# Service Health Checker

A monitoring script that uses `systemctl` to verify if a critical background process (daemon) is actively running on a Linux server.

## DevOps Use Case
This is foundational for automated self-healing scripts. If a load balancer or web server crashes, a script like this can detect the failure and trigger an automatic restart.

## Usage
1. Make the script executable: `chmod +x service_checker.sh`
2. Run it and pass a service name: `./service_checker.sh sshd`