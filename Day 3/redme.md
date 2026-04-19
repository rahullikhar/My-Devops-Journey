# Day 3: IT Infrastructure Foundations for DevOps

Today, I moved from networking basics into the core building blocks of infrastructure. I focused on understanding Servers, Operating Systems, and Firewalls from a DevOps perspective.

## 1. System Foundation: Operating Systems
An OS is the bridge between hardware and application programs.

* **Why Linux Dominates Servers:**
    * Free and open source.
    * Extremely stable (servers can run for years without rebooting).
    * Powerful Command Line Interface (CLI)—perfect for automation.
    * Lightweight (uses fewer resources than Windows/macOS).
    * Better security permission model.
* **Popular Linux Distros:** Ubuntu, CentOS, RHEL, Debian, Amazon Linux, Alpine.

## 2. Infrastructure Basics: Servers
A server is a high-reliability computer designed to process network requests 24/7.

* **Server vs. Normal Computer:** Servers are built for uptime and redundancy, using enterprise-grade hardware and server-specific OSs like Linux (Ubuntu, CentOS).
* **Types of Servers:**
    * **Web Server:** Serves web pages (Nginx, Apache).
    * **Application Server:** Runs backend logic (Node.js, Django).
    * **Database Server:** Stores/retrieves data (PostgreSQL, MySQL, MongoDB).
    * **File Server:** Stores files across a network (NFS, AWS S3).
    * **Mail Server:** Handles email (Postfix, Exchange).
    * **DNS Server:** Resolves domain names to IP addresses (BIND, Route 53).
* **Cloud Servers:** Virtual machines (like AWS EC2) running in a data center. They are flexible, elastic, and can be created or destroyed in minutes.

## 3. Network Security: Firewalls
A firewall acts as a barrier, monitoring and controlling network traffic based on security rules.

* **Why They Are Required:** To allow traffic on specific ports (80, 443, 22), block suspicious traffic, and restrict inbound connections.
* **Key Types:**
    * **Stateless/Packet Filtering:** Inspects packets individually (fast but limited).
    * **Stateful:** Tracks active connections.
    * **Host-Based:** Runs on individual devices (iptables, Windows Firewall).
    * **Application Firewall (WAF):** Inspects HTTP traffic at Layer 7 (blocks SQL injection, XSS).
* **Cloud Context:**
    * **AWS Security Groups:** Instance-level, stateful firewall.
    * **AWS Network ACLs:** Subnet-level, stateless firewall.

## Cheat Sheet: AWS Security Group Example (Inbound Rules)
| Port | Protocol | Source | Purpose |
| :--- | :--- | :--- | :--- |
| 22 | SSH | My IP Only | Secure remote access |
| 443 | HTTPS | Anywhere | Secure web traffic |
| 80 | HTTP | Anywhere | Standard web traffic |
| 3306 | MySQL | VPC CIDR only| Database access from internal network |
