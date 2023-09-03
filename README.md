# Cloud-1: Automated Web Application Deployment

<img src="https://access.redhat.com/sites/default/files/images/image3_14.png" />

Welcome to Cloud-1, an automated deployment project designed to deploy web applications on remote servers effortlessly. This README provides an overview of the project's key aspects and steps.

## Contents
1. [Introduction](#introduction)
2. [Platform Choice](#platform-choice)
3. [Mandatory Part](#mandatory-part)
4. [Focus Points](#focus-points)
5. [Submission and Peer-Evaluation](#submission-and-peer-evaluation)
6. [Using Ansible](#using-ansible)
7. [Docker and Docker Compose](#docker-and-docker-compose)
8. [FAQs](#faqs)
9. [Contributing](#contributing)
10. [License](#license)

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

## How Ansible Works
Ansible is an open-source automation tool that simplifies configuration management, application deployment, and task automation. It operates by defining tasks in simple YAML files known as "playbooks." Ansible playbooks describe a set of steps to be executed on target servers.

Here's a brief overview of how Ansible works:
1. **Inventory**: Define a list of target servers in an Ansible inventory file.

2. **Playbooks**: Create Ansible playbooks that contain a list of tasks to be performed on target servers.

3. **Execution**: Execute the playbooks using the `ansible-playbook` command. Ansible connects to target servers via SSH and runs the defined tasks.

4. **Modules**: Ansible modules are used within tasks to perform actions like package installation, service management, and file manipulation.

5. **Idempotent**: Ansible ensures that playbooks are idempotent, meaning they can be run multiple times without changing the target system if no changes are necessary.

For detailed Ansible documentation and examples, refer to the official [Ansible documentation](https://docs.ansible.com/ansible/latest/index.html).
