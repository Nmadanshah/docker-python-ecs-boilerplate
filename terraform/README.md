---

## 🚀 Quick Start Guide

### **1️⃣ Clone the Repository**
```sh
git clone https://github.com/your-username/devops-challenge-senior.git
cd devops-challenge-senior
```

## ☁️ Deploying to AWS with Terraform

### **1️⃣ Setup AWS Credentials**
Ensure you have AWS CLI configured:
```sh
aws configure
```

### **2️⃣ Initialize Terraform**
```sh
cd terraform
terraform init
```

### **3️⃣ Plan and Apply Changes**
```sh
terraform plan
terraform apply -auto-approve
```

### **4️⃣ Retrieve Load Balancer URL**
```sh
terraform output load_balancer_dns
```
Visit the printed URL in your browser.

---
