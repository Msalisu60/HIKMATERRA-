# HIKMATERRA - Jenkins CI/CD Pipeline Complete Project

## Overview
This repository contains the complete configuration files and pipeline definition for a Jenkins CI/CD automation program integrated with Docker, security credentials management, automated testing, and artifact archiving.

## Jenkins Setup & Plugins Used
- **Automation Server:** Jenkins (configured via declarative pipeline-as-code).
- **Key Plugins:** Git plugin, Docker Pipeline plugin, Credentials Binding plugin, and Pipeline SCM plugin.

## Pipeline Stages Explained
1. **Checkout:** Automatically checks out the latest source code from the Git repository.
2. **Build & Dependencies:** Compiles the application and handles necessary package installations.
3. **Test:** Executes automated unit and integration tests to ensure code stability.
4. **Dockerize:** Builds a containerized Docker image of the application.
5. **Security & Credentials Check:** Secures sensitive data using Jenkins credentials bindings.
6. **Deploy & Archive:** Manages artifact archiving and deployment simulation to the test environment.

## Triggers
- Configured with polling triggers (`pollSCM`) to automatically monitor and build upon source code pushes.
- 
