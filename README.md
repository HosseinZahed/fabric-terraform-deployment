## **Terraform Deployment of Microsoft Fabric with Azure Storage Backend**

### **Overview**
This project demonstrates how to deploy **Microsoft Fabric** using **Terraform** on Azure. It involves configuring a **Terraform backend** to store state remotely in an Azure **Storage Account** and setting up a **Service Principal** (SP) for authentication.

### **Steps to Set Up**

1. **Set Up the Terraform Environment**
   - Install **Terraform**.
   - Configure **Azure Provider** in Terraform (`provider.tf`).
   - Define your **Microsoft Fabric Workspace** (`main.tf`) using `fabric_workspace`.

2. **Configure Azure Storage Backend**
   - Create a **Resource Group** and **Storage Account** in Azure for storing Terraform state.
   - Assign **Service Principal** the **Storage Blob Data Contributor** or **Storage Account Key Operator** role for accessing the state file securely.

3. **Secure Authentication**
   - Use a **Service Principal** for **CI/CD** authentication.
   - Store **Azure SP credentials** as **GitHub Secrets** for secure login.

4. **GitHub Actions Workflow**
   - Set up a GitHub Actions pipeline to automate the **Terraform init, plan, and apply** steps.
   - Use **Azure Login** action for authentication and set environment variables for secure credential handling.

### **Roles and Permissions**
Ensure the Service Principal has the following roles:
- **Storage Blob Data Contributor** or **Storage Account Key Operator** for accessing storage account keys.
