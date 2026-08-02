Day - 4 AWS VPC - Virtual Private Cloud Foundation

# 1. VPC (Virtual Private Cloud)

**Definition:**  
Your **private network inside AWS**.

**Memory Trick:**

> **VPC = Your own private colony in AWS.**

```
Internet
    |
Internet Gateway
    |
---------------------
       VPC
---------------------
```

---

# 2. CIDR

**Definition:**  
Defines the **IP address range** of a VPC.

Example:

```
10.1.0.0/16
```

**Memory Trick**

> CIDR = How many IP addresses your VPC can have.

---

# 3. Subnet

**Definition**

A **smaller network inside a VPC** where EC2 instances live.

One subnet can contain:

- 0 EC2
    
- 1 EC2
    
- 50 EC2
    
- 100+ EC2
    

**Memory Trick**

> **Subnet = House where EC2s live.**

---

# 4. Public vs Private Subnet

|Public Subnet|Private Subnet|
|---|---|
|Internet accessible|No direct Internet access|
|Hosts Load Balancer, Bastion, Public EC2|Hosts Database, Backend EC2|
|Uses Internet Gateway|Uses NAT Gateway for outbound access|

**Memory Trick**

> Public = Everyone can reach it

> Private = Only internal AWS resources can reach it

---

# 5. Internet Gateway (IGW)

**Definition**

Connects your **VPC to the Internet.**

```
Internet
    |
Internet Gateway
    |
VPC
```

**Memory Trick**

> IGW = Main Gate of your VPC.

---

# 6. Route Table

**Definition**

Tells packets **where to go.**

```
Request
   |
Route Table
   |
Destination
```

Example

```
0.0.0.0/0
      ↓
Internet Gateway
```

**Memory Trick**

> Route Table = Google Maps for network traffic.

---

# 7. NAT Gateway

**Definition**

Allows **Private EC2** to access the Internet **without allowing inbound Internet traffic.**

```
Private EC2
      |
NAT Gateway
      |
Internet
```

### Why?

- Download packages
    
- OS Updates
    
- API Calls
    

But...

❌ Nobody from the Internet can connect back.

**Memory Trick**

> NAT = Internet Out, No Internet In.

---

# 8. Security Group

**Definition**

Firewall attached to an **EC2 instance**.

Controls

- Inbound traffic
    
- Outbound traffic
    

```
User
   |
Security Group
   |
EC2
```

**Key Facts**

- Instance Level
    
- Stateful
    
- Allow Rules Only
    

**Memory Trick**

> Security Group = Personal Bodyguard of EC2.

---

# 9. Network ACL (NACL)

**Definition**

Firewall attached to a **Subnet**.

Controls traffic for **every EC2** inside that subnet.

```
Subnet
   |
 NACL
   |
50 EC2 Instances
```

**Key Facts**

- Subnet Level
    
- Applies to all EC2s in that subnet
    
- Allow and Deny Rules
    

**Memory Trick**

> NACL = Security Gate at the colony entrance.

---

# Security Group vs NACL

|Security Group|NACL|
|---|---|
|Instance Level|Subnet Level|
|Protects one or more EC2|Protects entire subnet|
|Stateful|Stateless|
|Allow only|Allow + Deny|

### Interview Question

**Q. One private subnet has 50 EC2 instances. How many NACLs protect them?**

**Answer**

One NACL (attached to the subnet).

Security Groups can be:

- One shared by all 50 EC2
    
- Different for each EC2
    

---

# 10. Load Balancer

**Definition**

Distributes incoming traffic across multiple EC2 instances.

```
Users
   |
Load Balancer
   |
Target Group
   |
EC2 EC2 EC2
```

**Why?**

- High Availability
    
- Load Distribution
    
- Fault Tolerance
    

**Memory Trick**

> Load Balancer = Traffic Police.

---

# 11. Route 53

**Definition**

AWS DNS service.

Maps

```
amazon.com
      ↓
54.x.x.x
```

---

## Why DNS?

Instead of remembering

```
172.31.25.18
```

You remember

```
amazon.com
```

---

## Route 53 Flow

```
Buy Domain
      |
Hosted Zone
      |
DNS Records
      |
IP Address
```

**Memory Trick**

> Route 53 = Phonebook of the Internet.

---

# 12. Hosted Zone

Container that stores DNS records.

Contains

- A Record
    
- CNAME
    
- MX
    
- etc.
    

---

# 13. VPC Flow Logs

Records network traffic entering or leaving your VPC.

Used for

- Troubleshooting
    
- Monitoring
    
- Security analysis
    

---

# 14. AWS Shared Responsibility

### AWS

- Physical Security
    
- Hardware
    
- Data Centers
    

### Customer

- IAM
    
- Security Groups
    
- NACL
    
- EC2 Security
    

---

# Complete Request Flow

```
User
   |
Internet
   |
Internet Gateway
   |
Route Table
   |
Public Subnet
   |
Security Group
   |
EC2
```

---

# Super Interview Revision (One-Liners)

### What is a VPC?

A private network inside AWS.

### What is a Subnet?

A smaller network inside a VPC where EC2 instances live.

### What is CIDR?

Defines the IP address range of a VPC.

### What is an Internet Gateway?

Connects a VPC to the Internet.

### What is a Route Table?

Decides where network traffic goes.

### What is a Public Subnet?

A subnet that can communicate with the Internet.

### What is a Private Subnet?

A subnet without direct Internet access.

### Why use a NAT Gateway?

To allow private instances to access the Internet without accepting inbound connections.

### What is a Security Group?

An instance-level virtual firewall.

### What is a NACL?

A subnet-level firewall.

### What is a Load Balancer?

Distributes traffic across multiple EC2 instances.

### What is Route 53?

AWS DNS service.

### What is DNS?

Maps a domain name to an IP address.

### What is a Hosted Zone?

Stores DNS records for a domain.

### What are VPC Flow Logs?

Logs network traffic for monitoring and troubleshooting.

---

# 30-Second Memory Map

```
VPC
│
├── CIDR → IP Range
│
├── Subnet
│     ├── Public
│     └── Private
│
├── Internet Gateway → Internet Access
│
├── Route Table → Traffic Direction
│
├── NAT Gateway → Private → Internet (Outbound Only)
│
├── Security Group → EC2 Firewall
│
├── NACL → Subnet Firewall
│
├── Load Balancer → Distribute Traffic
│
└── Route53
      ├── DNS
      └── Hosted Zone
```

### Final Memory Trick

- **VPC** → Private Network
    
- **CIDR** → IP Range
    
- **Subnet** → Where EC2 Lives
    
- **IGW** → Internet Entry/Exit
    
- **Route Table** → Traffic Map
    
- **NAT Gateway** → Private → Internet Only
    
- **Security Group** → EC2 Firewall
    
- **NACL** → Subnet Firewall
    
- **Load Balancer** → Distributes Traffic
    
- **Route 53** → DNS Service
    
- **Hosted Zone** → DNS Records
    
- **VPC Flow Logs** → Network Traffic Logs