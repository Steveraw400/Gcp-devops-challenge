# 🚀 GCP DevOps Challenge – Production-Ready Job Application Platform

## 📌 Overview

This project demonstrates a **production-ready DevOps pipeline** on Google Cloud Platform (GCP).
It deploys a **containerized job application web app** where users can submit applications and upload CVs, which are stored securely in cloud storage.

The solution emphasizes:

* Infrastructure as Code (Terraform)
* CI/CD automation (GitHub Actions)
* Containerization (Docker)
* Cloud-native deployment (Cloud Run)

---

## 🏗️ Architecture

### 🔹 High-Level Flow

1. User accesses the web application
2. Submits job application + CV
3. Application runs on Cloud Run
4. File is uploaded to Google Cloud Storage

### 🔹 Components

* **Cloud Run (v2):** Hosts the containerized application
* **Artifact Registry:** Stores Docker images
* **Cloud Storage:** Stores uploaded CVs
* **Terraform:** Provisions infrastructure
* **GitHub Actions:** Automates build and deployment

---

## 🖼️ Architecture Diagram

![Architecture](./gcp_devops_architecture.png)

---

## ⚙️ Tech Stack

| Layer            | Technology                                  |
| ---------------- | ------------------------------------------- |
| Frontend         | HTML, CSS                                   |
| Backend          | Node.js (Express)                           |
| Containerization | Docker                                      |
| Infrastructure   | Terraform                                   |
| CI/CD            | GitHub Actions                              |
| Cloud Platform   | GCP (Cloud Run, Storage, Artifact Registry) |

---

## 🔄 CI/CD Pipeline

### Workflow:

1. Code pushed to `main` branch
2. GitHub Actions triggers pipeline
3. Docker image is built
4. Image pushed to Artifact Registry
5. Terraform deploys infrastructure
6. Cloud Run service is updated automatically

---

## 🧱 Infrastructure as Code

Terraform is used to provision:

* Artifact Registry repository
* Cloud Run (v2) service
* IAM roles and service account
* Integration with existing Cloud Storage bucket

### Structure:

```
terraform/
├── main.tf
├── variables.tf
├── outputs.tf
├── modules/
│   ├── cloud-run/
│   ├── artifact-registry/
│   └── iam/
```

---

## 🐳 Containerization

The application is containerized using Docker to ensure:

* Consistent runtime environment
* Easy deployment to Cloud Run
* Scalability

---

## 📂 Application Features

* User-friendly job application form
* File upload (CV in PDF format)
* Cloud Storage integration
* Responsive UI with modern styling

---

## 📊 Monitoring & Logging

* Logs are collected via GCP Cloud Logging
* Application performance monitored via Cloud Monitoring

---

## 🔐 Security

* IAM roles configured for least privilege
* Service account used for Cloud Run access
* Bucket access controlled via IAM

---

## ⚠️ Assumptions

* Application is stateless
* Public access is enabled for demo purposes
* Single-region deployment

---

## 🚀 Future Improvements

* Add authentication (login system)
* Integrate database (Firestore or Cloud SQL)
* Add admin dashboard to view applications
* Implement Cloud Armor (DDoS protection)
* Add custom domain and HTTPS

---

## ▶️ Deployment Steps

### 1. Clone Repository

```bash
git clone <repo-url>
cd Gcp-devop-challenge/terraform
```

### 2. Initialize Terraform

```bash
terraform init
```

### 3. Apply Infrastructure

```bash
terraform apply
```

---

## 🌐 Live Application

```
https://devops-app-519424870379.us-central1.run.app
```

---

## 📎 Repository Contents

* Terraform configurations
* CI/CD pipeline
* Dockerized application
* Architecture diagram
* Documentation

---

## 🧠 Design Decisions

* **Cloud Run** chosen for serverless scalability and simplicity
* **Terraform modules** used for reusable infrastructure
* **Manual bucket creation** simplifies initial setup while maintaining flexibility
* **Single container architecture** reduces complexity

---

## 🎯 Conclusion

This project demonstrates a **real-world DevOps workflow**, combining:

* Automation
* Cloud-native architecture
* Clean infrastructure design

It reflects practical decision-making and production-ready deployment practices.

---
