# 🌟 MavenHelloWorld: The CI/CD Foundation
[![Jenkins Build](https://img.shields.io/badge/Jenkins-Automated-blueviolet?logo=jenkins)](http://192.168.1.10:8080)
[![Deployment](https://img.shields.io/badge/Status-Live-success?logo=apache-tomcat)](http://192.168.1.10:8081)
[![Java](https://img.shields.io/badge/Source-Java--21-red?logo=java)](https://openjdk.org/)
[![License](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

## 📖 Overview
**MavenHelloWorld** is the foundational project in my DevOps journey. It marks the transition from manual code execution to a fully automated **Continuous Integration and Continuous Deployment (CI/CD)** ecosystem. 

This repository serves as a blueprint for setting up multi-module Maven projects and deploying them to a production-ready **Tomcat 10** environment using **Jenkins** pipelines.

---

## ⚡ Core Features
* **Automated Lifecycle:** Full build-to-deploy automation.
* **Java 21 Ready:** Optimized for the latest Java security and encapsulation standards.
* **Multi-Module Architecture:** Separation of concerns between `server` logic and `webapp` delivery.
* **Legacy-to-Modern Conversion:** Demonstrates the seamless migration of `javax` namespaces to `jakarta` for Tomcat 10 compatibility.

---

## 🛠 Project Blueprint
| Component | Responsibility |
| :--- | :--- |
| **Jenkins** | Orchestrates the build triggers and shell execution. |
| **Maven** | Handles dependency resolution and `.war` artifact packaging. |
| **Git/GitHub** | Version control and source of truth for the codebase. |
| **Tomcat 10** | Hosts the live application with automatic WAR expansion. |

---

## 🔧 Infrastructure Configuration

### 1. Maven Optimization
The project utilizes `maven-war-plugin` version **3.4.0** to ensure strict compatibility with Java 21's module system, preventing access violations during the build process.

### 2. Jenkins Shell Deployment
The deployment is handled via a custom shell script that ensures high availability by cleaning old artifacts before deploying new ones:
```bash
sudo rm -rf /var/lib/tomcat10/webapps/ROOT*
sudo cp webapp/target/webapp.war /var/lib/tomcat10/webapps/ROOT.war
sudo chown tomcat:tomcat /var/lib/tomcat10/webapps/ROOT.war
sudo systemctl restart tomcat10

🚀 How to Run Locally
Clone the Repository:

Bash
git clone git@github.com:Bibek-2024/MavenHelloWorld.git
Compile & Package:

Bash
mvn clean package
Access App:
The generated webapp.war can be found in webapp/target/.

📈 Learning Milestones
[x] Configured SSH-based Git authentication for secure Jenkins polling.

[x] Resolved Parent-Child POM inheritance issues.

[x] Implemented .gitignore best practices to protect sensitive terminal logs.

[x] Successfully scrubbed commit history to remove accidental secret leaks.

Architected by: Bibek Kumar Sahu
Senior DevOps & Infrastructure Focus


---

### Instructions to Apply:
1.  Navigate to your project: `cd ~/Desktop/MavenHelloWorld`
2.  Edit the file: `nano README.md`
3.  Delete any existing content and paste the block above.
4.  **Save and Push to GitHub:**
    ```bash
    git add README.md
    git commit -m "docs: finalized professional README for MavenHelloWorld"
    git push origin main
    ```

This README perfectly documents your troubleshooting wins—like fixing the Maven War plugin and scrubbing the Git history—which shows a lot of technical maturity to anyone viewing your GitHub!


