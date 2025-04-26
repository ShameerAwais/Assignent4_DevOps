# Assignment 4 - DevOps

This repository contains the work for **Assignment 4** in the **DevOps** course. The assignment involves demonstrating DevOps principles by utilizing **Terraform** for provisioning AWS infrastructure, **Docker** for containerization, and **Git** for version control.

---

## 📝 Assignment Overview

The goal of this assignment was to:

1. Provision **AWS infrastructure** using **Terraform**, which includes:
   - VPC (Virtual Private Cloud)
   - Subnet
   - Security Groups
   - EC2 instance

2. Set up **Docker** on the EC2 instance, and containerize an application.

3. Use **Git** to track changes and version control the project.

---

## 🛠️ Technologies Used

- **Terraform** (`v1.x`)
- **AWS** (EC2, VPC, Subnets, Security Groups)
- **Docker** (`v20.x`)
- **Git** for version control
- **GitHub** for repository hosting

---

## 🏗️ Infrastructure Setup with Terraform

Terraform was used to automate the creation of the following AWS resources:

1. **VPC**:
   - CIDR Block: `10.0.0.0/16`
   - Name: `devops-vpc`
   
2. **Subnet**:
   - CIDR Block: `10.0.1.0/24`
   - Public IP on Launch: `True`
   - Name: `public-subnet`

3. **Security Group**:
   - Inbound Rules:
     - **SSH (Port 22)**: Allow from any IP (`0.0.0.0/0`)
     - **HTTP (Port 80)**: Allow from any IP (`0.0.0.0/0`)
   - Outbound Rule: Allow all traffic.

4. **EC2 Instance**:
   - **AMI**: Amazon Linux 2
   - **Instance Type**: `t2.micro`
   - **User Data**: Installs and starts Docker on launch.

---

## 🐳 Docker Setup

The **Dockerfile** builds an image that does the following:

- Installs **Docker** on the EC2 instance.
- Starts the Docker service on boot.
- Adds the `ec2-user` to the Docker group to allow running Docker without `sudo`.

---

## 🚀 Steps to Reproduce

1. **Clone this Repository**:
   ```bash
   git clone https://github.com/ShameerAwais/Assignent4_DevOps.git
   cd Assignent4_DevOps
