# Web Application Deployed Using Jenkins and Terraform to provision Infrastructure

### Description:

This repository contains a project deployed using Jenkins that aims to automate various tasks in a software development lifecycle. Jenkins is an open-source automation server widely used for building, deploying, and automating software projects and automating the infrastructure provisioning process using terraform.

# Project Overview:

## What I did:

### 1- Provisioning Infrastructure Using Terraform:

1. Provision a VPC containing 3 private subnets and 1 public subnet
2. Provision a private EKS cluster within the private subnets
3. Provision a Bastion Host to access and configure the cluster

### 2- Deploying Jenkins on EKS Cluster using Ansible :

1. configuring my localhost to access the bastion host so that ansible can use bastion host to deploy jenkins on EKS using kubernetes module
2. configure the bastion host to access the cluster.

![Alt text](images/terraform-ansible.jpg?raw=true "Title")

### 3- Configuring Jenkins Pipeline to Deploy the project:

1. Configuring Jenkins to deploy PODS as slaves to build the app and run other pipeline processes.
2. Using Kaniko Executor to build the app images and pushing them to DockerHub
3. Creating Custom Docker image To act as a container image to Deploy the app to Kubernetes Using Helm Charts

![Alt text](images/cluster.jpg?raw=true "Title")

## Contact

If you have any questions or need further assistance, please feel free to contact the project maintainer:

- Name: Mohamed Alaa Amer
- Email: muhammed.alaa.amer@gmail.com

---

Pharogrammer
