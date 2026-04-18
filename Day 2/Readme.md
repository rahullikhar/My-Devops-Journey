# Session 5 & 6 - TCP/IP Model + Networking Protocols
**Completed: 17 April 2026**

### What I Learned

**1. TCP/IP Model (The Real Internet Protocol Stack)**
- Real internet uses **TCP/IP** (not OSI)
- Only **4 layers** instead of 7 (much simpler and practical)
- Developed by US Department of Defense
- Every cloud platform (AWS, Azure, GCP) is built on TCP/IP

**TCP/IP Layers:**
- **Layer 4: Application Layer**
- **Layer 3: Transport Layer**
- **Layer 2: Internet Layer**
- **Layer 1: Network Access Layer**

**OSI vs TCP/IP Mapping:**
- OSI Application (7) → TCP/IP Application
- OSI Presentation (6) → TCP/IP Application
- OSI Session (5) → TCP/IP Application
- OSI Transport (4) → TCP/IP Transport
- OSI Network (3) → TCP/IP Internet
- OSI Data Link (2) → TCP/IP Network Access
- OSI Physical (1) → TCP/IP Network Access

**2. Important Networking Protocols & Ports**

| Protocol       | Full Form                          | Purpose                          | Port     |
|----------------|------------------------------------|----------------------------------|----------|
| HTTP/HTTPS     | HyperText Transfer Protocol        | Web browsing                     | 80 / 443 |
| FTP/SFTP       | File Transfer Protocol             | File transfer                    | 21 / 22  |
| SMTP/IMAP/POP3 | Email protocols                    | Sending & receiving email        | 25, 143, 110 |
| SSH            | Secure Shell                       | Remote server access             | 22       |
| DNS            | Domain Name System                 | Domain to IP resolution          | 53       |
| DHCP           | Dynamic Host Configuration         | Automatic IP assignment          | 67-68    |
| ICMP           | Internet Control Message Protocol  | Network diagnostics (ping)       | -        |
| ARP            | Address Resolution Protocol        | IP to MAC address mapping        | -        |

**3. Router vs Switch**

| Feature              | Router                              | Switch                              |
|----------------------|-------------------------------------|-------------------------------------|
| Layer                | Layer 3 (Network Layer)             | Layer 2 (Data Link Layer)           |
| Works on             | IP Addresses                        | MAC Addresses                       |
| Purpose              | Connects different networks         | Connects devices in same network    |
| Speed                | Slower for local traffic            | Very fast for local traffic         |
| Example              | Home router (connects to internet)  | Office switch (connects computers)  |

**Next Target:** Session 7 & 8 tomorrow

#DevOps #TCPIP #Networking #LearningInPublic
