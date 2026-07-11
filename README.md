# 🚀 Self-Healing Deployment Engine

## 📌 Overview

A production-style DevOps project that automatically detects application failures, restarts the container, and performs rollback if recovery fails.

---

## 🛠 Tech Stack

- AWS EC2
- Jenkins
- Docker
- Python Flask
- Bash Scripting
- Prometheus
- Grafana
- Git & GitHub

---

## 🚀 Features

- Jenkins CI/CD Pipeline
- Dockerized Flask Application
- Automatic Health Checks
- Automatic Docker Container Restart
- Automatic Rollback to Stable Version
- Prometheus Monitoring
- Grafana Dashboard
- Production-style Deployment Workflow

---

## 📂 Project Structure

```
self-healing-deployment-engine
│
├── app/
├── scripts/
├── monitoring/
├── screenshots/
├── Jenkinsfile
├── README.md
└── .gitignore
```

---

## 🔄 Workflow

```
GitHub
   │
   ▼
Jenkins Pipeline
   │
   ▼
Docker Build
   │
   ▼
Deploy Container
   │
   ▼
Health Check
   │
Healthy?
 │      │
 │      ▼
 │   Restart Container
 │      │
 │      ▼
 │ Restart Successful?
 │      │
 │      ▼
 │ Rollback to Stable Image
 ▼
Deployment Successful
```

---

## 📸 Screenshots

- Jenkins Successful Build
- Flask Application
- Docker Running Container
- Prometheus Targets
- Grafana Dashboard

---

## 👨‍💻 Author

**Rajendra Nani**

