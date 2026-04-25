<div align="center">

# 🌟 MavenHelloWorld: The CI/CD Foundation
### *Enterprise Infrastructure Automation & Deployment*

[![Jenkins Build](https://img.shields.io/badge/Jenkins-Automated-blueviolet?style=for-the-badge&logo=jenkins)](http://192.168.1.10:8080)
[![Deployment](https://img.shields.io/badge/Status-Live-success?style=for-the-badge&logo=apache-tomcat)](http://192.168.1.10:8081)
[![Java](https://img.shields.io/badge/Source-Java--21-red?style=for-the-badge&logo=java)](https://openjdk.org/)

---

### 📖 Project Overview
**MavenHelloWorld** is a foundational project designed to demonstrate a robust **Continuous Integration and Continuous Deployment (CI/CD)** ecosystem. It serves as a blueprint for migrating legacy Java namespaces to modern **Jakarta EE** standards for **Tomcat 10** compatibility.

<br/>

| 🛠 Technology Stack | 📁 Architecture |
| :--- | :--- |
| **Java 21** & **Maven 3.9** | Multi-Module Maven Project |
| **Jenkins** Automation | Separate `server` & `webapp` layers |
| **Ubuntu 24.04 LTS** | Optimized `pom.xml` Inheritance |

</div>

---

### 🚀 CI/CD Pipeline Architecture
To ensure high availability and clean deployments, the project utilizes the following automated shell workflow:


```bash
# Automated Deployment Script
sudo rm -rf /var/lib/tomcat10/webapps/ROOT*
sudo cp webapp/target/webapp.war /var/lib/tomcat10/webapps/ROOT.war
sudo chown tomcat:tomcat /var/lib/tomcat10/webapps/ROOT.war
sudo systemctl restart tomcat10
```

---

###  ⚡ Strategic Milestones
[x] Secure Authentication: Configured SSH-based Git keys for zero-password Jenkins polling.

[x] Namespace Migration: Seamlessly transitioned javax to jakarta for modern server support.

[x] Security Hardening: Implemented .gitignore to prevent sensitive log exposure.

[x] History Integrity: Successfully scrubbed Git history to remove accidental secret leaks.

---

###  📦 How to Build Locally
```bash
### 1. Clone the secure repository
git clone git@github.com:Bibek-2024/MavenHelloWorld.git
```
```bash
### 2. 🏗️ Execute the Maven Lifecycle
mvn clean package
```
```bash
### 3. 🚀 Access the Artifact
### Path: webapp/target/webapp.war
```
---

### 💻 Maintained & Architected by

Bibek Kumar Sahu <br> 
...
