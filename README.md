# Cloud-1: Automated Web Application Deployment

<img src="https://access.redhat.com/sites/default/files/images/image3_14.png" />

Welcome to Cloud-1, an automated deployment project designed to deploy web applications on remote servers effortlessly. This README provides an overview of the project's key aspects and steps.

## Table of Contents
- [Introduction](#introduction)
- [Platform Choice](#platform-choice)
- [Mandatory Part](#mandatory-part)
- [Focus Points](#focus-points)
- [Submission and Peer-Evaluation](#submission-and-peer-evaluation)

## Introduction
Cloud-1 is inspired by the subject "Inception." The primary objective is to deploy your web application and the necessary Docker infrastructure on a remote server provided by a cloud provider. In this version, each process will have its container, and automation is crucial for deployment. We recommend using Ansible for automation.

## Platform Choice
While Scaleway is recommended as a cloud provider, you're free to use other providers that offer equivalent services. Be aware of billing when using external providers, as you are responsible for any costs incurred.

## Mandatory Part
- Automated deployment using a tool of your choice (Ansible recommended).
- Deploy a complete web server running services such as WordPress, PHPmyadmin, and a database.
- Ensure data persistence, automated restart, and secure public access.
- Deploy services in separate containers with inter-container communication.
- Use `docker-compose.yml` and enable TLS where possible.
- Implement URL redirection based on requested URLs.

## Focus Points
- Responsible resource management to avoid unnecessary costs.
- Attention to server and service sizes to optimize resource usage.
- Be cautious with third-party services to prevent unexpected charges.
- Protect sensitive information (keys, identifiers) in public repositories.

## Submission and Peer-Evaluation
Submit your project via your Git repository. Only content within your repository will be evaluated. Focus on functionality rather than aesthetics.

Feel free to add a memorable domain name for HTTPS access if desired (optional).

---

**Note:** This README provides a concise overview of the project. For detailed project requirements and information, please refer to the official project documentation provided by your educational institution.
