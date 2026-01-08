# 🚀 AWS CI/CD Pipeline Project

### Automated Docker Build & EC2 Deployment using CodePipeline, CodeBuild & CodeDeploy

---

## 📌 Project Introduction

This project demonstrates a **real-world end-to-end CI/CD pipeline on AWS**, where application code is automatically built, containerized, and deployed to an **EC2 instance**.

The pipeline follows **industry-level DevOps practices** including automated builds, centralized orchestration, and real deployment using **AWS CodeDeploy Agent**.

---

## 🎯 Project Objective

The objective of this project is to:

* Automate application build and deployment
* Understand AWS native CI/CD services
* Deploy Dockerized applications on EC2
* Implement a **production-style DevOps workflow**

---

## 🏗️ Architecture Overview

### 🔹 High-Level Architecture

The architecture is designed to automate the complete CI/CD lifecycle from code commit to deployment on EC2.

```
Developer
   |
   v
GitHub Repository
   |
   v
AWS CodePipeline
   |
   v
AWS CodeBuild  ----->  Docker Hub
   |
   v
AWS CodeDeploy
   |
   v
Deployment Group
   |
   v
Amazon EC2 (CodeDeploy Agent Installed)
```

---

### 🔹 Architecture Explanation (Component-wise)

#### 👨‍💻 Developer

* Pushes application code to GitHub
* Any code change triggers the CI/CD pipeline

---

#### 📦 GitHub Repository

* Acts as the **source stage**
* Stores application code and CI/CD configuration files
* Integrated with AWS CodePipeline

---

#### 🔄 AWS CodePipeline

* Orchestrates the complete CI/CD workflow
* Connects GitHub, CodeBuild, and CodeDeploy
* Ensures stages run in correct order

---

#### 🛠️ AWS CodeBuild

* Executes **Continuous Integration (CI)**
* Pulls code from GitHub
* Installs dependencies
* Builds the Docker image using Dockerfile
* Pushes Docker image to **Docker Hub**

---

#### 🐳 Docker Hub

* Stores the Docker images
* Acts as a container image registry
* EC2 pulls images from Docker Hub during deployment

---

#### 🚀 AWS CodeDeploy

* Handles **Continuous Deployment (CD)**
* Triggered by CodePipeline
* Uses Deployment Group to identify target EC2 instance
* Sends deployment instructions to EC2

---

#### 🎯 Deployment Group

* Logical group inside CodeDeploy
* Defines **where** the application will be deployed
* Maps EC2 instance as deployment target

---

#### 🖥️ Amazon EC2

* Final deployment target
* **AWS CodeDeploy Agent installed and running**
* Executes deployment lifecycle scripts
* Stops old container and starts new container

---

## 🧰 Services & Tools Used

| Service / Tool   | Purpose                       |
| ---------------- | ----------------------------- |
| GitHub           | Source code management        |
| AWS CodePipeline | CI/CD orchestration           |
| AWS CodeBuild    | Build & Docker image creation |
| AWS CodeDeploy   | Application deployment        |
| Amazon EC2       | Deployment target             |
| CodeDeploy Agent | Executes deployment on EC2    |
| Docker           | Application containerization  |
| Docker Hub       | Image registry                |
| IAM              | Roles & permissions           |

---

## 📂 Repository Structure Explained

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

## 🔍 File-by-File Explanation

### 🐳 Dockerfile

Defines how the Docker image is built.

### 📄 buildspec.yml

Used by AWS CodeBuild to:

* Build Docker image
* Authenticate with Docker Hub
* Push image to Docker Hub

### 📄 appspec.yml

Used by AWS CodeDeploy to manage deployment lifecycle hooks.

### ▶️ start_container.sh

Pulls the Docker image from Docker Hub and starts the container.

### 🛑 stop_container.sh

Stops and removes the existing container before deployment.

---

## 🔁 CI/CD Pipeline Workflow (Detailed)

### 1️⃣ Source – GitHub

* Code pushed to GitHub triggers pipeline

### 2️⃣ Build – CodeBuild

* Application build
* Docker image creation
* Image pushed to Docker Hub

### 3️⃣ Orchestration – CodePipeline

* Controls stage execution
* Triggers deployment after successful build

### 4️⃣ Deployment – CodeDeploy

* Deployment Group starts deployment
* EC2 selected as target

### 5️⃣ EC2 Execution

* CodeDeploy Agent executes scripts
* Application deployed successfully

---

## 🔐 IAM Roles & Permissions

* IAM roles used for secure communication
* No hardcoded credentials
* Role-based access for AWS services

---

## 📈 Key Features

* Fully automated CI/CD pipeline
* Docker image built during CI stage
* Real EC2 deployment using CodeDeploy Agent
* Zero manual deployment

---

## 🧠 Learning Outcomes

* AWS CI/CD service integration
* Docker-based application delivery
* Deployment using CodeDeploy Agent
* Real-world DevOps automation

---

## 🚀 Future Enhancements

* Use Amazon ECR instead of Docker Hub
* Add Load Balancer & Auto Scaling
* Add monitoring using CloudWatch

---

## 👤 Author

**Ajay Patel**
Aspiring DevOps Engineer

🔗 GitHub: [https://github.com/ajayhp07]
🔗 LinkedIn: www.linkedin.com/in/ajay077




