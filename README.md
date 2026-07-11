# 🚀 Self-Healing Deployment Engine

## 📌 Project Overview

The **Self-Healing Deployment Engine** is a DevOps automation project that demonstrates continuous integration, containerized deployment, health monitoring, automated recovery, and infrastructure monitoring.

The goal of this project is to automatically deploy an application, continuously monitor its health, and recover from failures with minimal manual intervention.

---

# 🏗️ Architecture

```
Developer
    │
    ▼
 GitHub Repository
    │
    ▼
 Jenkins Pipeline
    │
    ▼
 Docker Build
    │
    ▼
 Docker Deployment
    │
    ▼
 Flask Application
    │
    ▼
 Health Check
    │
 ┌──┴─────────────┐
 │                │
Healthy      Unhealthy
 │                │
 ▼                ▼
Running     Restart Container
                  │
                  ▼
           Rollback (if required)

Monitoring Stack

Node Exporter
      │
      ▼
 Prometheus
      │
      ▼
  Grafana Dashboard
```

---

# ⚙️ Technology Stack

* AWS EC2
* Linux
* Git
* GitHub
* Docker
* Jenkins
* Python Flask
* Prometheus
* Node Exporter
* Grafana
* Kubernetes (Deployment & Service YAML)

---

# 📂 Project Structure

```
self-healing-deployment-engine/
│
├── app/
├── monitoring/
├── kubernetes/
├── scripts/
├── screenshots/
├── Dockerfile
├── Jenkinsfile
└── README.md
```

---

# 🔄 CI/CD Workflow

1. Developer pushes code to GitHub.
2. Jenkins pulls the latest code.
3. Docker image is built.
4. Application is deployed in a Docker container.
5. Health endpoint is verified.
6. Monitoring begins using Prometheus.
7. Grafana visualizes server metrics.

---

# ❤️ Self-Healing Workflow

* Deploy application
* Monitor health endpoint
* Detect application failure
* Restart container when necessary
* Continue monitoring after recovery

---

# 📊 Monitoring

Monitoring is implemented using:

* Prometheus
* Node Exporter
* Grafana

The dashboard displays:

* CPU Usage
* Memory Usage
* Disk Usage
* Network Traffic
* System Load

---

# 📸 Screenshots

## Jenkins Pipeline

![Jenkins](screenshots/jenkins-pipeline.png)

---

## Flask Application

![Application](screenshots/application-home.png)

---

## Docker Container

![Docker](screenshots/docker-container.png)

---

## Prometheus Targets

![Prometheus](screenshots/prometheus-targets.png)

---

## Grafana Dashboard

![Grafana](screenshots/grafana-dashboard.png)

---

# 👨‍💻 Author

**Rajendra Nani**

DevOps Engineer | AWS | Docker | Jenkins | Terraform | Ansible | Kubernetes | Prometheus | Grafan
