# Day 5: How the Web Works & My First Look at AWS ☁️

Today I took a step back from networking cables and IP addresses to look at the bigger picture: how apps actually talk to each other, and where they live.

## 1. The Client-Server Model
This is basically the foundation of the entire internet. It sounds fancy, but it's really just a conversation between two computers.

* **The Client:** This is you! Or rather, your web browser or phone app. You are the one asking for something.
* **The Server:** This is a big, powerful computer sitting somewhere else that waits for requests. 

**How it works in real life:** When I type `google.com` into my browser, my laptop (the client) sends a request out into the internet. Google's computers (the servers) get that request, process it, and send back the webpage for me to see. 

**Why a DevOps engineer cares about this:**
If one server gets too many requests at once, it crashes. So in DevOps, we use things like **Load Balancers** to split the traffic across multiple servers. If one server goes down, another one is there to catch the traffic.

## 2. AWS Cloud & AWS EC2
I used to think the "cloud" was some magical invisible thing. Today I learned it's literally just someone else's computer. 

* **AWS (Amazon Web Services):** Amazon has massive buildings full of servers all over the world. Instead of a company buying their own expensive physical servers, they just rent Amazon's servers over the internet. You only pay for what you use.
* **EC2 (Elastic Compute Cloud):** This is the most basic building block in AWS. An EC2 instance is just a virtual server. I can go into AWS, click a few buttons, and in 2 minutes I have a fully working Linux or Windows server ready to go. I connect to it from my laptop, do my work, and when I'm done, I can delete it so I stop getting charged.
