# QA CNE DEV OPS PROJECT

## Introduction.
The aim of this Dev Ops project is deploy to a flask application by implementing a software architecture through the use of several technologies. In this README.file, I will go over the building process of this project by following the logical order of the MVP required. Hence, the role of Terraform (creating project infrastructure) and  Ansible (configuration management) creating favourable conditions to run this application. Additionally, I will explain how this project has contributed to my personal development and how I intend to utilise the lessons learnt in the future.

- Jenkins Virtual Machine (Key Files & Scripts)- called PROJECT-REPO- https://github.com/lisandrodv27/PROJECT-REPO
<br>
- Infrastructure, Configuration & Cluster (Terraform, Ansible, K8s: relevant files): -called Dev-Ops-VM https://github.com/lisandrodv27/dev-ops-vm
<br>

## Project Deliverables & Requirements

# Project Deliverable:
- A CI Pipeline that supports the infrastructure implemented, detailing the different interdependencies of several technologies that aim to create a suitable environment for clients.

# Project Objectives:
- Fully functioning Terraform infrastructure with the use of modules. It must implement AWS EC2 instances, RDS' and an EKS cluster with the appropriate key security and basic instance configuration (AMI, AMI/instance type, etc.)
- Using Ansible as a configuration management tool to install all the appropriate applications and dependencies that are used in this project.
- Use of containerisation and orchestration applications, such as Docker and Kubernetes (K8S) for app deployment purposes.
- Effective integration of VSC (GitHub) with Jenkins in order to automate with the use of webhooks.
- Implementation of two RDS instances: Production and Testing.
- A functional Elastic Kluster Service to manage and automate the deployment and scaling of the containerised apps and the reverse proxy through which the client will interact.

# Jira Board
This project was planned in a 'reductionist' manner by fragmenting the requirements into approachable tasks. The MVP structure was utilised as a planning framework to tackle the different requirements by following a logical order- Infrastructure creation and configuration, container orchestration, pipeline automation, testing and deployment.

# Infrastructure and Configuration

# Terraform:
- Terraform was the selected tool to build the project infrastructure through an Infrastructure as Code (IaC) process that aimed to exploit the benefits of automation and hybrid cloud. For this, a modular structure was created to ensure that the resources built were grouped into different modules from which the root directory (main.tf) effectively built the VPC, EC2, RDS and EKS infrastructures. Terraform was a great tool to ensure that the project infrastructure had a "single source of truth" and allowed for a fully automated infrastructure deployment.

# Ansible:
- Ansible was the chosen configuration management tool that worked on par with Terraform to produce the necessary infrastructure configurations and create a desired state for these configurations. Ansible was used to implement the different applications needed in the remote VM (Docker/Docker-compose, Jenkins, AWS CLI, Kubectl, MYSQL, PYTEST). The use of roles and an inventory were implemented in order to achieve an automated and reusable project configuration. Ansible had a great utility and I considered it to really embrace Dev Ops principles of reusability and automated configuration management.

# CI Pipeline Automation

# Jenkins Pipeline:
- A Jenkins pipeline was created for this project, which aimed to automatically pull code from GitHub, automate tests and upload images to the selected Artefact Repository (DockerHub). A webhook was set up to trigger the pipeline and run the Jenkinsfile every time the source code was updated. This then, on par with K8s, deployed pods for the flask application and backend to run.

# Testing & Image Building
- Automated tests were implemented, creating two containers (backend and frontend) with Docker-compose and subsequently run tests within them. PYTEST was used for this, whilst MYSQL was selected for database tests. Upon confirmation from Jenkins, this application would then build a frontend image and a backend image that would be pushed to DockerHub.

# Deployment

# Kubernetes:
- K8S was used to deploy the project application. The AWS EKS cluster was created using Terraform (module: eks) by implementing a cluster and node group blocks with all the necessary basic configurations. K8S orchestrated the several containers that connected the client and the functionality of this application. This infrastructure consisted of pod deployments for the frontend and backend, as well as a reverse proxy that allowed the client to interact (NGINX), Cluster IP's and a ConfigMap for the reverse proxy. 

# Learning Journey & Key Considerations

## What have I learnt?
This project has been a great opportunity to get a taste of how and why Dev Ops is an effective culture to adopt in the modern IT industry. I was able to gain an understanding into why automated processes, security issues and a commitment to reusable and high quality code is extremely important to both organisations and clients. I have been able to gain comfortability with and a foundational understanding of many different technologies that may be implemented to create automated and 'quality-assured' software applications. This project has certainly been a challenging learning journey from which I take many lessons that I look forward to implementing in the future. I consider to have gained numerous skills and distinct perspectives into building high quality code that is suitable for clients. Distinctively, the multitude of errors I encountered were certainly a considerable barrier to bypass and an important takeaway for my future personal development. I consider to have gained a better understanding of how to ensure that my built applications are functional and error-free, althogh I admit there is still much to learn. Overall, this project has been a great opportunity to develop my knowledge on Dev Ops and make me aware of the areas that I need to keenly work to improve the mistakes and shortcomings I had during it. 

## Key considerations & Issues
A recurring issue that I encountered throughout this project was the appearance of erros across the many applications that we used. More specifically, the errors between the connectivity of two or more technologies proved to be the main barrier for me to bypass in this project. I consider they had a considerable effect in slowing down the process of building this application, as the errors I encountered proved to be very time-consuming and required much trial and error.

Performing in this project has been an effective way to sediment my understanding of key Dev Ops implications. Thanks to it, I have been able to gain unvaluable knowledge that I look forward to implementing in my career. Throughout this process, I have been able to gain theoretical and practical knowledge of Dev Ops implications through a challenging task that tested my ability to conceptualise the different tools used and how they became interdependet for the purpose of this project.

# Conclusion: Dev Ops as a Culture of Efficiency and Software Quality
Thanks to this practical project, I have gained a significant appreciation for the culture of Dev Ops and its use in modern industry. I consider that it has sharpened several intellectual tools and allowed me to understand the importance of this set of practices. Dev Ops aims to optimise software building processes and ensure continous delivery to clients in order to meet the challenges of contemporary dynamic markets that require an effective use of resources and automation. Overall, it has been a very enjoyable and challenging journey that has tested my ability to build complex software applications that aim to fulfil the desires and needs of users. I admit I endured many defeats whilst I engaged in this project, yet I intend to use these experiences to build upon my foundations and improve both as a digital technology consultant and as a person. I am fully committed to improve on my shortcomings and enhance my successes to ensure that I approach my personal development accordingly and keep building upon my skill set and experiences.

# Acknowledgements
I would like to highlight my gratitude to, first and foremost, QA and my trainers for having supported me throughout this learning journey. I am delighted with how much I have learned coming from a non-technical background and I intend to continue learning and applying everything I learn in my future career. Furthermore, I would like to thank my family, friends and cohort colleagues for supporting me through this process. I will use this experience to build upon my personna and ensure that I am able to face the issues I encountered more effectively in future projects.  

