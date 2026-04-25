# 🚀 Procurement Intelligence Dashboard (Beroe-Inspired)
[![Build Status](https://img.shields.io/badge/Jenkins-Build--Success-green?logo=jenkins)](http://192.168.1.10:8080)
[![Java](https://img.shields.io/badge/Java-21-orange?logo=java)](https://www.oracle.com/java/)
[![Maven](https://img.shields.io/badge/Maven-3.9.6-blue?logo=apache-maven)](https://maven.apache.org/)
[![Tomcat](https://img.shields.io/badge/Tomcat-10.1-red?logo=apache-tomcat)](https://tomcat.apache.org/)

An automated enterprise-grade web application for tracking market trends and procurement insights. This project demonstrates a full **CI/CD pipeline** integrating modern Java development with automated infrastructure deployment.

---

## 🛠 Technology Stack
| Layer | Technology |
| :--- | :--- |
| **Frontend** | HTML5, CSS3, Bootstrap 5 (Responsive UI) |
| **Backend** | Java 21, Maven (Multi-module Architecture) |
| **CI/CD** | Jenkins, GitHub Webhooks, Git |
| **Web Server** | Apache Tomcat 10.1 (Jakarta EE) |
| **Platform** | Ubuntu 24.04 LTS |

---

## 🏗 Project Structure
This is a **Multi-Module Maven Project** designed for scalability:
* `server/`: Contains the core Java logic and data processing.
* `webapp/`: The user-facing web interface and JSP components.
* `pom.xml`: Root configuration managing Java 21 compatibility and plugin lifecycles.

---

## 🔄 CI/CD Pipeline Flow
1.  **Code Commit:** Developer pushes code to the `main` branch.
2.  **Trigger:** GitHub notifies **Jenkins** via Webhook/Polling.
3.  **Build:** Jenkins executes `mvn clean package` using Java 21.
4.  **Security:** Maven plugins verify dependencies and compile artifacts.
5.  **Deployment:** * Existing `ROOT.war` is cleared from Tomcat.
    * New `webapp.war` is deployed to `/var/lib/tomcat10/webapps/`.
    * Tomcat 10 auto-converts legacy code for the Jakarta namespace.
6.  **Live:** Application becomes accessible at `http://192.168.1.10:8081`.

---

## 🚀 Installation & Local Setup

### Prerequisites
* Java 21 installed (`java -version`)
* Maven 3.9+ installed (`mvn -version`)
* Tomcat 10 configured on port 8081

### Build Instructions
```bash
# Clone the repository
git clone git@github.com:Bibek-2024/MavenHelloWorld.git

# Navigate to project root
cd MavenHelloWorld

# Build the project
mvn clean package
