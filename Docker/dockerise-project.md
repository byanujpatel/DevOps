# AWS EC2 + VPC Networking Learning Notes

## 🚀 Project

**Project:** FastAPI Todo App

### Tech Stack

- FastAPI

- HTML + CSS Frontend

- Ubuntu EC2 Instance

- AWS VPC

- Docker (optional deployment)

### Deployment

- Successfully deployed on AWS EC2.

- Application is live and accessible via the EC2 Public IP.

---

# Biggest Learning (Real Experience)

## ❌ Problem

After configuring my EC2 instance, I was **unable to connect using SSH**.

Initially, I suspected:

- Wrong PEM key ❌

- Security Group issue ❌

- EC2 instance issue ❌

But none of these were the actual problem.

---

## Root Cause

The **VPC Network ACL (NACL)** had an inbound rule that **denied incoming traffic**.

Because of that:

- SSH (Port 22) was blocked.

- FastAPI application traffic was also blocked.

- The EC2 instance appeared unreachable.

---

## ✅ Solution

Updated the **Network ACL Inbound Rules** to allow the required ports.

After changing the rule from **Deny** to **Allow**:

- SSH connection worked ✅

- FastAPI application became accessible ✅

- Deployment was successful ✅

---

# Why This Happened

Traffic Flow

```text

Internet

│

▼

Route Table

│

▼

Network ACL

│

▼

Security Group

│

▼

EC2 Instance

```

Since **Network ACL** is checked before the Security Group,

if the NACL blocks traffic,

➡️ **the packet never reaches the Security Group or the EC2 instance.**

---

# Screenshot Summary

Current Inbound Rules

| Rule | Port | Action |

|------|------|--------|

|100|22 (SSH)|Allow|

|110|1024-65535|Allow|

|*|All Traffic|Deny (Default)|

This is the expected AWS configuration because:

- Rules are evaluated in order.

- If no rule matches,

- The default `*` rule denies the traffic.

---

# Security Group vs Network ACL

| Security Group | Network ACL |

|---------------|-------------|

| Instance Level Firewall | Subnet Level Firewall |

| Stateful | Stateless |

| Allow Rules Only | Allow + Deny Rules |

| No Rule Order | Rule Order Matters |

| Return traffic automatically allowed | Return traffic must be explicitly allowed |

---

# Quick Interview Questions

## Q1. What is a Network ACL?

A Network ACL (Network Access Control List) is a **subnet-level firewall** that controls inbound and outbound traffic.

---

## Q2. What is a Security Group?

A Security Group is an **instance-level firewall** that controls traffic entering and leaving an EC2 instance.

---

## Q3. Which is checked first?

```text

Internet

↓

Route Table

↓

Network ACL

↓

Security Group

↓

EC2 Instance

```

Answer:

**Network ACL is checked before the Security Group.**

---

## Q4. Why couldn't you SSH into your EC2 instance?

Because the **Network ACL denied inbound traffic on Port 22**, so SSH packets never reached the EC2 instance.

---

## Q5. Can a Security Group override a Network ACL?

**No.**

If the Network ACL blocks traffic, the Security Group never gets a chance to evaluate it.

---

## Q6. Why is a Security Group called Stateful?

Because if inbound traffic is allowed, the response traffic is automatically allowed.

---

## Q7. Why is a Network ACL called Stateless?

Because inbound and outbound rules are evaluated separately.

If you allow inbound traffic, you must also allow the corresponding outbound traffic.

---

# My Debugging Journey

```text

Unable to SSH

│

▼

Checked PEM Key ✅

│

▼

Checked EC2 Running ✅

│

▼

Checked Security Group ✅

│

▼

Checked Network ACL ❌

│

▼

Found Inbound Rule = Deny

│

▼

Changed to Allow

│

▼

SSH Connected ✅

│

▼

FastAPI Todo App Live 🚀

```

---

# Quick Revision (30 Seconds)

- EC2 = Virtual Machine

- VPC = Private Network in AWS

- Subnet = Smaller network inside a VPC

- Route Table = Decides where packets go

- Internet Gateway = Connects VPC to the Internet

- Security Group = Instance Firewall (Stateful)

- Network ACL = Subnet Firewall (Stateless)

- NACL supports Allow + Deny rules

- Security Groups support only Allow rules

- NACL is checked before Security Groups

- SSH uses Port 22

- FastAPI commonly runs on Port 8000

- Wrong NACL rules can make an EC2 instance unreachable

---

# Real Interview Answer

> While deploying a FastAPI Todo application on AWS EC2, I faced an SSH connectivity issue. Initially, I checked the key pair, instance status, and Security Group, but everything looked correct. I then investigated the VPC Network ACL and found that an inbound rule was denying the required traffic. After updating the NACL to allow the necessary ports, SSH and my FastAPI application worked correctly. This experience helped me understand that Network ACLs are stateless, operate at the subnet level, and are evaluated before Security Groups, which are stateful and operate at the instance level.