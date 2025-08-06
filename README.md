# 🛠️ Terraform Backend Infrastructure

This repository contains Terraform code to deploy the backend infrastructure for managing Terraform state in AWS. It includes:

- 📦 **S3 bucket** for storing the Terraform state file
- 📊 **DynamoDB table** for state locking and consistency
- ⚙️ GitHub Actions workflow using **OIDC** for authentication (no long-lived secrets)
- 📁 Modularized code under:
  - `modules/s3`
  - `modules/dynamodb`

---

## 🚀 CI/CD via GitHub Actions

A GitHub Actions workflow is defined using YAML under `.github/workflows/`. It handles:

- Initializing Terraform
- Planning and applying infrastructure
- Authenticating securely using AWS OIDC

Note: This workflow uses temporary state file, need to drop both s3 bucket and dynamodb table before running the workflow

---

## 📁 Project Structure

- .github
  - workflows
    - deploy.yml # GitHub Actions CI/CD pipeline
- modules
  - s3/ # s3 backend definition module
    - s3.tf
    - outputs.tf
    - variables.tf
  - dynamodb/ # dynamodb state locking table module
    - dynamodb.tf
    - outputs.tf
    - variables.tf
- main.tf # Main Terraform configuration
- outputs.tf # Output values
- README.md # Project documentation
