# ☁️ 3. Cloud Engineering - AWS EC2

> **Amazon EC2 (Elastic Compute Cloud) lets you create and run virtual servers in the cloud.**

---

# ❓Why do we need EC2?

Earlier, companies had to buy and maintain physical servers.

### Problems

- 💰 Expensive hardware
- 🛠 Server maintenance
- 🔒 Security updates
- 📈 Difficult to scale
- ⏳ Time-consuming setup

➡️ EC2 lets you rent a virtual server in minutes.

---

# First Principle

## What is EC2?

EC2 stands for **Elastic Compute Cloud**.

Think of it as a **Virtual Server (Virtual Machine)** running in AWS.

```
Physical Server (AWS Datacenter)
            │
            ▼
     Virtual Machine (EC2)

CPU • RAM • Storage • Network
```

AWS owns the physical servers.

You rent a virtual server running on them.

---

# 💡 Why is it called "Elastic"?

Elastic means you can **scale resources up or down** whenever needed.

```
Low Traffic
     │
     ▼
Small EC2 Instance

⬇️

High Traffic
     │
     ▼
Larger EC2 Instance
```

You can increase or decrease resources based on demand.

---

# 🌍 Why use EC2?

Instead of buying servers,

AWS provides virtual servers on demand.

### Benefits

- No hardware management
- Pay only for what you use
- Launch servers in minutes
- Easy to scale
- AWS manages the infrastructure

---

# 🖥️ Types of EC2 Instances

### General Purpose

Balanced CPU, RAM, and networking.

📌 Most commonly used.

---

### Compute Optimized

More CPU power.

Best for

- Machine Learning
- High-performance computing
- Video processing

---

### Memory Optimized

More RAM.

Best for

- Big Data
- In-memory databases
- Analytics

---

### Storage Optimized

High storage performance.

Best for

- Large databases
- Data warehousing
- Log processing

---

### Accelerated Computing

Uses GPUs or specialized hardware.

Best for

- AI
- Deep Learning
- Graphics rendering

---

# 🌎 Regions & Availability Zones

AWS has data centers across the world.

### Region

A geographical location.

Examples

- Mumbai
- Singapore
- North Virginia

Choose a region close to your users.

Benefits

- Lower latency
- Better user experience
- Compliance requirements

---

### Availability Zone (AZ)

Each Region contains multiple Availability Zones.

```
Mumbai Region

├── AZ A
├── AZ B
└── AZ C
```

If one Availability Zone fails,

➡️ Applications can continue running in another AZ.

This improves **high availability**.

---

# 📌 Real-world Example

Users in India

⬇️

Deploy EC2 in **Mumbai Region**

⬇️

Users get lower latency compared to a server in the US.

---

# ⚙️ AWS Hands-on

### ✅ Completed

- Created an EC2 Instance
- Selected AWS Region
- Connected using SSH from Terminal
- Installed Jenkins
- Updated Inbound Security Group Rules
- Verified Jenkins was accessible from the browser

---

# 💡 Key Idea

```
AWS Datacenter
        │
        ▼
      EC2 Instance
        │
        ▼
Deploy Application
        │
        ▼
Users Access It
```

You focus on the application.

AWS manages the physical infrastructure.

---

# 🎯 Interview Answers

### What is EC2?

EC2 is a virtual server provided by AWS that lets you run applications in the cloud.

---

### Why do we use EC2?

To run applications without buying and maintaining physical servers.

---

### Why is it called Elastic Compute Cloud?

Because you can easily increase or decrease computing resources based on demand.

---

### What is a Region?

A Region is a geographical location where AWS has data centers.

---

### What is an Availability Zone?

An Availability Zone is an isolated data center within a Region that improves availability and fault tolerance.

---

### Which EC2 instance type is most commonly used?

General Purpose instances are the most commonly used because they provide a balanced mix of CPU, memory, and networking.

---

# ⚡ 30-Second Revision

- EC2 = Virtual Server in AWS.
- Elastic = Scale resources up or down.
- AWS owns the physical servers.
- You rent virtual machines on demand.
- Pay only for what you use.
- General Purpose = Most common instance type.
- Region = Geographic location.
- Availability Zone = Multiple isolated data centers within a Region.
- Multiple AZs improve high availability.
- Connected to EC2 using SSH and installed Jenkins.