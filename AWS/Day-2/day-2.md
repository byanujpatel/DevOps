# 🔐 Identity and Access Management (IAM)

> **IAM controls who can access AWS resources and what actions they can perform.**

---

# ❓Why do we need IAM?

Imagine everyone in a company has the same AWS account.

Problems

- Anyone can delete resources
- Anyone can access sensitive data
- No security
- No accountability

➡️ We need to give different people different permissions.

---

# 🧠 First Principle

IAM solves two problems.

```
Authentication
        +
Authorization
```

### Authentication

**Who are you?**

Example

- Login with username & password

---

### Authorization

**What are you allowed to do?**

Example

- Read S3
- Launch EC2
- View CloudWatch
- Delete DynamoDB

Not everyone should have every permission.

---

# 👥 IAM Components

## User

Represents a person or application.

Example

- Anuj
- Rahul
- backend Developer

---

## Group

A collection of users with similar responsibilities.

Examples

- Developers
- QA
- Database Admin
- AI Engineers

Instead of giving permissions to every user individually,

➡️ Add the user to a group.

---

## Policy

A policy defines **what actions are allowed or denied**.

Examples

- Read S3
- Create EC2
- Access CloudWatch
- Deny Delete
- BedRock

Policies are attached to

- Users
- Groups
- Roles

---

## Role

A role provides **temporary permissions**.

Common use cases

- EC2 accessing S3
- Lambda accessing DynamoDB
- Cross-account access

> *(Will explore Roles in detail later.)*

---

# 📌 Real-world Example

Company

```
example.com

                Root User
                    │
        ┌───────────┼───────────┐
        │           │           │
   Developers      QA      DevOps Admin
```

Developer needs

- ✅ EC2
- ✅ S3
- ✅ DynamoDB (Read Only)

Developer should **not**

- ❌ Delete EC2
- ❌ Delete S3 Buckets
- ❌ Manage IAM Users

---

# ⚙️ AWS Implementation

### ✅ Completed

- Created IAM User
- Created IAM Group
- Added User to Group
- Attached Policy to Group
- Verified users inherit permissions from the group

📸 *(Add screenshots here)*

🎥 *(Add implementation video here)*

---

### ⏳ Next

- IAM Roles
- Cross-Account Roles
- Assume Role
- Temporary Credentials

---

# 💡 Key Idea

Instead of giving permissions to every user,

```
Create User
      ↓
Add User to Group
      ↓
Attach Policy to Group
      ↓
All users inherit permissions
```

Simple, scalable, and easier to manage.

---

# 🎯 Interview Answers

### What is IAM?

IAM is an AWS service that manages authentication and authorization for AWS resources.

---

### What is Authentication?

Authentication verifies **who the user is**.

---

### What is Authorization?

Authorization decides **what actions the user is allowed to perform**.

---

### What is an IAM User?

An IAM User represents an individual person or application that needs AWS access.

---

### What is an IAM Group?

An IAM Group is a collection of users that share the same permissions.

---

### What is an IAM Policy?

An IAM Policy is a set of permissions that define what actions are allowed or denied.

---

### What is an IAM Role?

An IAM Role provides temporary permissions to AWS services, users, or other AWS accounts.

---

# ⚡ 30-Second Revision

- IAM = Authentication + Authorization
- User = Individual identity
- Group = Collection of users
- Policy = Defines permissions
- Role = Temporary permissions
- Add users to groups instead of assigning permissions individually
- Groups make permission management easier