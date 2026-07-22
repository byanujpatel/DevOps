# 🌐  Networking Fundamentals | IP Address, IPv4, IPv6, CIDR, Subnet, VPC & Ports

> Learn **Networking** from first principles using simple explanations and real-world examples. This guide covers **IP Address, IPv4, IPv6, CIDR, Subnet, VPC, Public & Private Networks, and Ports** to help you prepare for software engineering interviews, AWS certifications, and backend/cloud development.

---

# ❓ Why do we need this?

Imagine every house in the world had the same address.

- Nobody could deliver your package.
- Nobody could find your house.
- Everything would become confusing.

Computers face the same problem.

Every device connected to a network needs a **unique address** so data knows exactly where to go.

Without networking concepts:

- Devices cannot communicate.
- Internet cannot work.
- AWS cannot identify your servers.
- Security becomes impossible.

---

# 🏗️ Foundation

## Think of Your Home

```
Home Address
      │
      ▼
House
```

Now replace it with computers.

```
IP Address
      │
      ▼
Computer
```

Just like every house has an address,

Every device has an **IP Address**.

---

## What is an IP Address?

An **IP Address (Internet Protocol Address)** is a **unique address given to every device connected to a network.**

Examples:

```
Laptop
↓

192.168.0.102
```

```
Phone
↓

192.168.0.103
```

```
TV
↓

192.168.0.104
```

Your WiFi router gives each device a different IP.

---

## Real Example

Suppose your home WiFi has:

- Laptop
- Mobile
- Smart TV
- Tablet

```
Home WiFi
     │
────────────────────────
│      │      │       │
▼      ▼      ▼       ▼
Laptop Phone  TV    Tablet

192.168.0.2
192.168.0.3
192.168.0.4
192.168.0.5
```

Every device has a unique IP.

---

## Why Must Every Device Have a Unique IP?

Imagine everyone in your city had the same house number.

Delivery becomes impossible.

Similarly,

Without unique IP addresses,

- Internet cannot send data.
- Websites cannot reply.
- Routers cannot identify devices.

---

# IPv4

The most commonly used IP format.

Example

```
172.16.2.3
```

Another example

```
192.168.0.102
```

---

## Structure of IPv4

```
172.16.2.3

│    │   │  │
▼    ▼   ▼  ▼

8    8   8  8 bits
```

There are **4 parts**.

Each part is called an **Octet**.

---

### Octet

```
172
```

is one octet.

IPv4 contains

```
Octet
↓

Octet
↓

Octet
↓

Octet
```

Total

```
4 Octets
```

---

## Range of Each Octet

Each octet stores

```
8 bits
```

Maximum value

```
11111111

↓

255
```

Minimum value

```
00000000

↓

0
```

So every octet can be

```
0 → 255
```

Example

```
194.23.2.1
```

```
194
23
2
1
```

Each value lies between **0–255**.

---

## IPv4 Size

```
1 Byte = 8 bits
```

IPv4

```
4 Bytes

↓

32 Bits
```

---

## Exercise

Identify the four octets.

```
172.32.16.1
```

Answer

```
172
32
16
1
```

---

## Find Your Mac's IP Address

```bash
ipconfig getifaddr en0
```

Example Output

```bash
192.168.0.102
```

---

# IPv6

IPv4 addresses are limited.

The world now has:

- Phones
- Smart TVs
- Cars
- Watches
- IoT Devices
- Cloud Servers

We need more addresses.

That's why **IPv6** was introduced.

Example

```
2001:0db8:85a3:0000:0000:8a2e:0370:7334
```

Compared to IPv4,

- Much larger address space
- Supports billions of billions of devices
- Future-proof Internet

---

# What is a Subnet?

Suppose a school has only **one WiFi**.

Everyone connects to it.

```
Students

Teachers

Visitors

Office Staff

Finance Team

Principal
```

All are on the same network.

Now imagine one student's laptop gets infected with malware.

Potential problems

- Sensitive payroll files
- Student records
- Office systems
- Shared folders

Everything becomes exposed.

---

## Solution

Split one large network into smaller networks.

This process is called

**Subnetting**

```
One Network

↓

Small Network 1

Small Network 2

Small Network 3
```

Each small network is called a **Subnet**.

---

## Example

```
School Network
        │
──────────────────────────────
│             │
▼             ▼

Finance      Guest WiFi
Subnet       Subnet
```

Finance remains isolated from guest users.

---

## Why Create Subnets?

- Better security
- Better isolation
- Easier management
- Reduced attack surface

---

## Public vs Private Subnet

### Public Subnet

Connected to the Internet.

Example

- Web Server
- Load Balancer

```
Internet
     │
     ▼
Public Subnet
```

---

### Private Subnet

No direct Internet access.

Example

- Database
- Payroll Server
- Internal APIs

```
Internet

✖

Private Subnet
```

Only trusted systems can access it.

---

# What is a VPC?

Before creating subnets,

AWS first creates a **Virtual Private Cloud (VPC).**

Think of a VPC as your own private network inside AWS.

```
AWS

↓

Your VPC

↓

Subnets

↓

EC2
```

Simple analogy

```
City

↓

Apartment

↓

Rooms
```

AWS

↓

VPC

↓

Subnets

---

## Example

```
AWS Cloud

│

└── VPC

      │

 ┌────┴─────────────┐

 ▼                  ▼

Finance          Guest

Subnet           Subnet
```

Everything stays inside your private AWS network.

---

# CIDR (Classless Inter-Domain Routing)

CIDR defines

**How many IP addresses are available in a network.**

Example

```
172.16.3.0/24
```

Read it as

```
Network Address

↓

172.16.3.0

Subnet Mask

↓

24
```

---

## Understanding `/24`

IPv4 has

```
32 bits
```

CIDR

```
/24
```

means

```
24 bits fixed

8 bits available
```

```
32 - 24 = 8
```

Possible addresses

```
2⁸

=

256
```

---

## CIDR Visualization

```
172.16.3.0/24

172

Fixed

16

Fixed

3

Fixed

0-255

Changes
```

Only the last octet changes.

---

## Example

```
172.16.3.0/30
```

```
32-30

=

2 bits

2²

=

4 IP addresses
```

---

## Example

```
10.0.0.0/8
```

```
32-8

=

24 bits

2²⁴

=

16,777,216 IPs
```

Huge network.

---

## Practice

Calculate

```
10.0.0.0/8
```

Questions

- Fixed bits?
- Variable bits?
- Number of IPs?

---

# Private IP Address Ranges

The most common private IP ranges are:

| Range | Usage |
|--------|------|
| **10.0.0.0/8** | Large organizations |
| **172.16.0.0 – 172.31.255.255** | Medium networks |
| **192.168.0.0/16** | Home WiFi, offices |

These IPs are **not directly accessible from the Internet**.

---

# What are Ports?

An IP identifies a **device**.

A Port identifies an **application running on that device**.

Think of it like this:

```
Apartment Building
      │
      ▼
IP Address
```

```
Apartment Number
      │
      ▼
Port
```

---

Example

```
Laptop

↓

192.168.0.102
```

Applications

```
Chrome

↓

Port 443
```

```
React App

↓

3000
```

```
Spring Boot

↓

8080
```

One device.

Multiple applications.

Each application listens on a different port.

---

## Common Ports

| Port | Service |
|-------|----------|
| **22** | SSH |
| **80** | HTTP |
| **443** | HTTPS |
| **3306** | MySQL |
| **5432** | PostgreSQL |
| **6379** | Redis |
| **27017** | MongoDB |
| **3000** | React / Node.js |
| **5000** | Flask |
| **8000** | Django |
| **8080** | Spring Boot / Tomcat |

---

# ⚙️ How Does Everything Work Together?

```
Internet

        │

        ▼

Router

        │

        ▼

AWS VPC

        │

 ┌──────┴───────────┐

 ▼                  ▼

Public Subnet    Private Subnet

 │                  │

 ▼                  ▼

EC2              Database

 │

Port 80

Port 443

Port 22
```

---

# 🌍 Real-World Example

Imagine an office.

```
Office WiFi

↓

Employees

Visitors

Finance Team
```

Instead of allowing everyone into the same network,

The company creates:

```
VPC

│

├── Finance Subnet

├── Engineering Subnet

└── Guest WiFi
```

Benefits

- Guests cannot access payroll.
- Developers cannot access finance systems.
- Databases remain private.
- Public website stays accessible.

---

# ✅ Advantages

- Unique identity for every device
- Secure communication
- Better network isolation
- Easier monitoring
- Controlled Internet access
- Scalable cloud networking
- Improved security

---

# ⚠️ Important Facts

- Every device must have a **unique IP Address**.
- **IPv4 = 32 bits**.
- **IPv6 = 128 bits**.
- Every IPv4 address has **4 octets**.
- One octet = **8 bits**.
- **VPC** is your private AWS network.
- **Subnet** divides a large network into smaller networks.
- **CIDR** determines the network size.
- **IP identifies the device**.
- **Port identifies the application**.
- Private IPs are not directly reachable from the Internet.
- Never place databases in a public subnet.
- **Interview Tip:** Be able to explain the relationship: **VPC → Subnet → EC2 → Port**.

---

# 🛠️ Hands-on Implementation

## ✅ Learned

- Checked local IP using `ipconfig getifaddr en0`
- Identified IPv4 octets
- Understood IPv4 vs IPv6
- Learned why subnetting is needed
- Created a mental model of VPC
- Calculated IPs using CIDR (`/24`, `/30`, `/8`)
- Learned common private IP ranges
- Understood the difference between IP addresses and ports


---

# 🎤 Interview Questions & Answers

### 1. What is an IP Address?

A unique address that identifies a device on a network.

---

### 2. What is IPv4?

A **32-bit** addressing system consisting of **4 octets**.

---

### 3. What is IPv6?

A **128-bit** addressing system created to solve IPv4 address exhaustion.

---

### 4. What is a subnet?

A subnet is a smaller network created by dividing a larger network to improve security and organization.

---

### 5. What is subnetting?

The process of dividing one large network into multiple smaller networks.

---

### 6. What is a VPC?

A Virtual Private Cloud is your own isolated private network inside AWS.

---

### 7. What does CIDR mean?

CIDR defines the IP address range available in a network using prefix notation like `/24`.

---

### 8. How many IP addresses are available in a `/24` network?

`2^(32-24) = 256` IP addresses.

---

### 9. What is the difference between an IP address and a port?

An **IP Address** identifies a device, while a **Port** identifies a specific application or service running on that device.

---

### 10. Why keep databases in a private subnet?

To prevent direct Internet access and improve security.

---

# ⚡ 30-Second Revision

- Every network device needs a **unique IP Address**.
- IPv4 uses **32 bits (4 octets)**.
- IPv6 uses **128 bits**.
- One octet ranges from **0 to 255**.
- A **VPC** is a private network in AWS.
- A **Subnet** divides a VPC into smaller networks.
- **CIDR** defines how many IP addresses are available.
- Public subnets allow Internet access; private subnets do not.
- An **IP** identifies a device.
- A **Port** identifies an application running on that device.

