# 🚀 DevOps Challenge - Senior (Flask App + AWS Terraform)

## 📌 Overview
This repository contains a **Flask application** containerized using **Docker** and deployed to **AWS ECS (Fargate)** using **Terraform**. Additionally, **GitHub Actions** automates CI/CD for **Docker image builds** and **Terraform deployments**.

---

## 🏗️ Project Structure

```plaintext
.
├── .github/                  # GitHub Actions workflows for CI/CD
│   ├── workflows/
│   │   ├── deploy.yml        # Automates ECS deployment
│   │   ├── docker-build.yml  # Builds and pushes Docker images
│   │   ├── terraform.yml     # Runs Terraform plan & apply
│   ├── pull_request_template.md
│
├── app/                      # Flask application source code
│   ├── main.py               # Flask API returning timestamp & client IP
│   ├── requirements.txt      # Python dependencies
│   ├── Dockerfile            # Defines how the Flask app is containerized
│   ├── README.md             # Documentation for the app
│   ├── .gitignore            # Ignore unnecessary files in version control
│
├── terraform/                # Terraform configuration for AWS infrastructure
│   ├── vpc.tf                # AWS VPC, Subnets, NAT, and Route Tables
│   ├── alb.tf                # Application Load Balancer (ALB)
│   ├── ecs.tf                # ECS Cluster, Task Definitions, Services
│   ├── iam.tf                # IAM roles and policies for ECS tasks
│   ├── output.tf             # Terraform outputs (ALB DNS)
│   ├── provider.tf           # AWS provider configuration
│   ├── README.md             # Documentation for Terraform
│   ├── variables.tf          # Input variables for Terraform
│   ├── terraform.tfvars.example  # Example variable values
│   ├── .gitignore            # Ignores Terraform state & sensitive files
│
├── LICENSE                   # License file
├── README.md                 # Main documentation
├── .gitignore                # Ignore files globally
```
## ⚡ Dockerhub details
- **Dockerhub public repo details** – nmadanshah114/devops

## ⚡ GitHub Actions (CI/CD)

The repo includes **GitHub Actions workflows** for:
✅ **Docker Image Build & Push** (`docker-build.yml`)
✅ **ECS Deployment** (`deploy.yml`)
✅ **Terraform Plan and Apply** (`terraform.yml`)

Each PR triggers **Terraform plan** automatically.

---

## 🏗️ Infrastructure Summary
- **AWS ECS (Fargate)** – Runs the Flask container.
- **AWS ALB** – Routes traffic to ECS service.
- **AWS VPC** – Private subnets for ECS tasks, public subnets for ALB.
- **AWS IAM** – Secure roles & policies for ECS execution.
- **AWS S3 & DynamoDB** – Used for Terraform backend storage.

## License
This project is open-source and available under the MIT License.
