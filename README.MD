#QA CNE DEV OPS PROJECT

## Introduction
The aim of this Dev Ops project is deploy to a flask application by implementing a software archictecture through the use of several technologie. In this README. file, I will go over the building process of this project by following the logical order of the MVP required. Hence, the role of Terraform (creating project infrastructure) and  Ansible (configuration management) creating favourable conditions to run this application.

Jenkins Virtual Machine (Key Files & Scripts)- called PROJECT-REPO- https://github.com/lisandrodv27/PROJECT-REPO
<br>
Infrastructure, Configuration & Cluster (Terraform, Ansible, K8s: relevant files): -called Dev-Ops-VM https://github.com/lisandrodv27/dev-ops-vm
<br>

## Project Deliverables & Requirements

# Deliverables:
- A CI Pipeline that supports the infrastructure implemented, detailing the different interdependencies of several technologies that aim to create a suitable environment for clients.

# Project Objectives:
- Fully functioning Terraform infrastructure with the use of modules. It must implement AWS EC2 instances, RDS' and an EKS cluster with the appropriate key security and basic instance configuration (AMI, instace type, Roles, etc.)
- Using Ansible as a configuration management tool to install all the appropriate applications and dependencies that are used in this project.
- Use of container orchestration applications, such as Docker and Kubernetes (K8S) for app deployment purposes.
- Effective integration with a VSC (GitHub) with Jenkins in order to automate with the use of webhooks.
- Implementation of two RDS instances: Production and Testing.
- A functional Elastic Kluster Service to manage and automate the deployment and scaling of the containerised apps and the reverse proxy through which the client will interact.

# Jira Board

![jiraboard][jiraboard]

This project was planned in a 'reductionist' manner by fragmenting the requirements into approachable tasks. The MVP structure was utilised as a planning framework to tackle the different requirements by following a logical order- Infrastructure creation and configuration, container orchestration, pipeline automation, testing and deployment.

# Risk Assessment

# Infrastructure and Configuration

# CI Pipeline Automation

# Testing

# Deployment

# Learning Journey & Key Considerations

# Dev Ops as a Culture




