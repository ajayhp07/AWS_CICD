# 🚀 AWS CI/CD Pipeline with CodePipeline, CodeBuild & CodeDeploy

## 📌 Project Overview

This project demonstrates a **complete end-to-end CI/CD pipeline on AWS**, where application code hosted on GitHub is automatically built and deployed to an **EC2 instance** using AWS DevOps services.

The deployment is performed using **AWS CodeDeploy**, with the **CodeDeploy Agent installed inside the EC2 instance**, enabling real application deployment.

---

## 🏗️ Architecture Overview

**Flow:**

GitHub
→ AWS CodePipeline
→ AWS CodeBuild
→ AWS CodeDeploy
→ EC2 Instance (CodeDeploy Agent Installed)

---

## 🛠️ Services & Tools Used

* **GitHub** – Source code repository
* **AWS CodePipeline** – CI/CD orchestration
* **AWS CodeBuild** – Build automation
* **AWS CodeDeploy** – Application deployment
* **Amazon EC2** – Deployment target
* **AWS CodeDeploy Agent** – Enables deployment on EC2
* **Docker** – Application containerization
* **IAM** – Roles & permissions

---

## 📂 Repository Structure

```
AWS_CICD
├── Dockerfile
├── buildspec.yml
├── appspec.yml
├── app.py
├── requirements.txt
├── start_container.sh
└── stop_container.sh
```

---

## 🔁 CI/CD Pipeline Workflow

### 1️⃣ Source Stage – GitHub

* Application code is stored in GitHub
* Any new commit automatically triggers the pipeline

---

### 2️⃣ Build Stage – AWS CodeBuild

* Code checkout from GitHub
* Application build process
* Docker image creation using `Dockerfile`
* Build steps defined in `buildspec.yml`

---

### 3️⃣ EC2 Preparation

* EC2 instance launched for deployment
* **AWS CodeDeploy Agent installed manually inside EC2**
* IAM Role attached to EC2 with required CodeDeploy permissions

---

### 4️⃣ CodeDeploy Configuration

* Application created in AWS CodeDeploy
* Deployment Group configured
* EC2 instance added as deployment target
* CodeDeploy integrated with CodePipeline

---

### 5️⃣ Deployment Stage

* CodePipeline triggers CodeDeploy automatically
* CodeDeploy Agent executes deployment on EC2
* Deployment lifecycle managed using `appspec.yml`

---

## 📄 Important Configuration Files

### `buildspec.yml`

Defines build commands executed by CodeBuild.

### `appspec.yml`

Controls deployment lifecycle and calls shell scripts during deployment.

### Shell Scripts

* `stop_container.sh` – Stops existing application/container
* `start_container.sh` – Starts new application/container

---

## 🔐 Security & Permissions

* IAM roles used for service-to-service communication
* No hardcoded credentials in code

---

## 📈 Key Features

* Fully automated CI/CD pipeline
* Real EC2 deployment using CodeDeploy Agent
* GitHub-based pipeline trigger
* Dockerized application deployment

---

## 🎯 Learning Outcomes

* Hands-on experience with AWS CI/CD services
* Understanding CodeDeploy Agent & lifecycle hooks
* End-to-end DevOps automation
* IAM role and permission handling

---

## 👤 Author

**Ajay Patel**
Aspiring DevOps Engineer
🔗 LinkedIn: *(add your LinkedIn profile link)*

⭐ If you found this project useful, don’t forget to star the repository!
