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

---

## 📁 Project Structure

