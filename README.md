# Azure-DevOps
study repo
<details>
<summary>
 Azure Identity and Access Management tasks</summary>
<details>
<summary>Practical Task 1: Introduction to Microsoft Entra ID Create a basic Microsoft Entra ID setup for an organization to manage identity and access. </summary>
Requirements:
<details>
<summary>1.	Create a new Microsoft Entra ID tenant. </summary>
1.1	Log in to the Azure Portal
-	Go to Azure Portal and log in with your Microsoft account.
  
1.2	Navigate to Microsoft Entra ID
-	From the portal homepage, search for "Microsoft Entra ID
  
1.3	 Create a New Tenant
-	In the left menu, click Manage tenants → + Create.
-	Select Azure Active Directory and click Next.
-	Fill in the details:
    - Organization name: (e.g., "MyOrganization").
    - Initial domain name: (e.g., "myorganization.onmicrosoft.com")
    - Region: Choose your geographical region.
      
-	Click Review + Create → Create.
</details>
<details>
<summary>2. Add at least two users to the directory. </summary>
![Alt text](https://raw.githubusercontent.com/AnnaMushchynina/Azure-DevOps/fde249bdc519212f393fc1d4d1a404446b0b02a5/1.2_users.jpg)
</details>
<details>
<summary>3. Create two groups named Developers and Admins. </summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/fde249bdc519212f393fc1d4d1a404446b0b02a5/1.3_groups.jpg
</details>
<details>
<summary>4. Assign the users to appropriate groups. </summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/62d29113dfa93b8dd8d66af4afe36cf2e30e70fe/1.4_adm_groups.jpg
https://github.com/AnnaMushchynina/Azure-DevOps/blob/62d29113dfa93b8dd8d66af4afe36cf2e30e70fe/1.4_dev_groups.jpg
</details>
<details>
<summary>5. Assign the Global Reader role to the Admins group and 6. Assign the Application Developer role to the Developers group.  </summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/14fcb6ffc3602031d2080a8242ce1ce86c211bf6/1.5_ass_role.jpg
</details>
<details>
<summary>7. Verify that the role assignments function as expected for both groups.</summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/14fcb6ffc3602031d2080a8242ce1ce86c211bf6/2.7_verify.jpg
</details>
</details>

<details>
<summary>Practical Task 2: Enabling Single Sign-On (SSO) and Multi-Factor Authentication (MFA) Configure Single Sign-On (SSO) and Multi-Factor Authentication (MFA) for users in a Microsoft Entra ID directory to enhance identity and access security. </summary>
Requirements:
<details>
<summary>1. Enable Single Sign-On (SSO) for your Microsoft Entra ID tenant. </summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/9ec3233d462b8ada5ea5da088d686b14bfef84cd/2.1_sso.jpg
https://github.com/AnnaMushchynina/Azure-DevOps/blob/9ec3233d462b8ada5ea5da088d686b14bfef84cd/2.1_sso_user.jpg
</details>
<details>
<summary>2. Enforce Multi-Factor Authentication (MFA) for all users in the directory. </summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/f3ded2c2e4da49adbba9fd4a4d11824306f1109f/2.2_mfa.jpg
</details>
<details>
<summary>3. Configure conditional access policies to require MFA for high-risk sign-ins. </summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/f3ded2c2e4da49adbba9fd4a4d11824306f1109f/2.3_con_acc.jpg
  
2.3.1 Go to Conditional Access
   - Navigate to Security → Conditional Access → + New policy.
     
2.3.2 Create a Policy for High-Risk Sign-Ins
 - Provide a name for the policy (e.g., "Require MFA for High-Risk Sign-Ins").
- In the Assignments section:
    - Users: Select all users or specific groups (e.g., Admins, Developers).
    - Conditions: Enable Sign-in risk and set it to High.
- In the Access controls section:
    - Select Grant → Require multi-factor authentication.
- Click Enable policy → Create.
</details>
<details>
<summary>4. Verify that SSO and MFA settings are correctly applied for the users.</summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/f3ded2c2e4da49adbba9fd4a4d11824306f1109f/2.4_verify.jpg
</details>
</details>

<details>
<summary>Practical Task 3: Implementing Role-Based Access Control (RBAC)
Implement Role-Based Access Control (RBAC) in Azure to manage access to resources based on roles and
ensure fine-grained access management.
 </summary>
Requirements:
<details>
<summary>1. Create a custom role named Resource Viewer with read-only permissions for a specific resource
group.</summary>
  https://github.com/AnnaMushchynina/Azure-DevOps/blob/af3717519c1d0e8bb4d1c8e7e23e13b0df67549b/3.1_cust_role.jpg
  https://github.com/AnnaMushchynina/Azure-DevOps/blob/af3717519c1d0e8bb4d1c8e7e23e13b0df67549b/3.1_read.jpg
  https://github.com/AnnaMushchynina/Azure-DevOps/blob/af3717519c1d0e8bb4d1c8e7e23e13b0df67549b/3.1_scopes.jpg
</details>
<details>
<summary>2. Assign the Resource Viewer role to the Developers group created earlier.</summary>
  https://github.com/AnnaMushchynina/Azure-DevOps/blob/d09b77531a00e717180642e81e96948c01478c53/3.2_rw_dev.jpg
</details>
<details>
<summary>3. Assign the built-in Contributor role to the Admins group for the same resource group.</summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/d09b77531a00e717180642e81e96948c01478c53/3.3_cont_adm.jpg
</details>
<details>
<summary>4. Verify that members of the Developers group have only read access and members of the Admins
group have full access to the resource group.</summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/d09b77531a00e717180642e81e96948c01478c53/3.4_verify.jpg
</details>
</details>

<details>
<summary>Practical Task 4: Securing Sensitive Information with Azure Key Vault
Set up Azure Key Vault to securely store and manage sensitive information such as keys, secrets, and
certificates.  </summary>
Requirements:
<details>
<summary>1. Create a new Azure Key Vault in your subscription.</summary>
  https://github.com/AnnaMushchynina/Azure-DevOps/blob/b419c8f77ef8c02334e97cd1a4557f168da05540/4.1_create_kv.jpg
</details>
<details>
<summary>2. Add a secret to the Key Vault (e.g., a database connection string).</summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/b419c8f77ef8c02334e97cd1a4557f168da05540/4.2_create_sec.jpg
</details>
<details>
<summary>3. Set access policies to grant the Application Developer role (assigned to the Developers group)
permission to retrieve secrets from the Key Vault.</summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/b419c8f77ef8c02334e97cd1a4557f168da05540/4.3_ass_role_key.jpg
</details>
<details>
<summary>4. Verify that only members of the Developers group can access the stored secret.</summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/b419c8f77ef8c02334e97cd1a4557f168da05540/4.4_verify.jpg
https://github.com/AnnaMushchynina/Azure-DevOps/blob/9e4fd4db7c3cf7dc225776a318500bf38e6ea7a5/4.4_verify_err.jpg
</details>
</details>

<details>
<summary>Practical Task 5: Creating and Assigning Basic Azure Policies
Define and assign Azure Policies to enforce compliance with organizational standards for resource
management.</summary>
Requirements:
<details>
<summary>1. Create an Azure Policy to enforce tagging for all newly created resources with a specific tag (e.g.,
Environment: Development).</summary>
 https://github.com/AnnaMushchynina/Azure-DevOps/blob/9e4fd4db7c3cf7dc225776a318500bf38e6ea7a5/5.1_add_policy.jpg
</details>
<details>
<summary>2. Assign the policy to a resource group.</summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/9e4fd4db7c3cf7dc225776a318500bf38e6ea7a5/5.2.1_basics.jpg
https://github.com/AnnaMushchynina/Azure-DevOps/blob/9e4fd4db7c3cf7dc225776a318500bf38e6ea7a5/5.2.2_parameters.jpg
</details>
<details>
<summary>3. Verify that any new resource created in the resource group without the required tag is marked as
non-compliant.</summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/9e4fd4db7c3cf7dc225776a318500bf38e6ea7a5/5.3_new_res.jpg
</details>
<details>
<summary>4. Review and document the compliance status of the resource group.</summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/9e4fd4db7c3cf7dc225776a318500bf38e6ea7a5/5.4_comp.jpg
https://github.com/AnnaMushchynina/Azure-DevOps/blob/9e4fd4db7c3cf7dc225776a318500bf38e6ea7a5/5.4.1_comp_todo.jpg
</details>
</details>

<details>
<summary>Practical Task 6: Using Policy Effects to Enforce Compliance
Configure Azure Policies with different policy effects to enforce compliance and manage resources
according to organizational standards.</summary>
Requirements:
<details>
<summary>1. Create a policy with the Audit effect to monitor and log untagged resources within a resource
group.</summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/7bb3b6330a39a0e73e02b042d9371404083e6a3a/6.1_add_policy_%D1%84%D0%B3%D0%B2%D1%88%D0%B5.jpg
</details>
<details>
<summary>2. Create a policy with the DeployIfNotExists effect to automatically add a specific tag (Owner: IT) to
any newly created resource.</summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/7bb3b6330a39a0e73e02b042d9371404083e6a3a/6.2_add_policy_own.jpg
</details>
<details>
<summary>3. Assign these policies to a resource group and verify their behavior by:</summary>
  - Creating a resource without a tag and checking the compliance logs.  
  - Creating a resource to validate the automatic tag deployment.
  https://github.com/AnnaMushchynina/Azure-DevOps/blob/7bb3b6330a39a0e73e02b042d9371404083e6a3a/6.3_verify.jpg
  https://github.com/AnnaMushchynina/Azure-DevOps/blob/7bb3b6330a39a0e73e02b042d9371404083e6a3a/6.3.1_verify_own_tag.jpg
</details>
</details>
</details>


<details>
<summary>Azure Compute Services Practical tasks</summary>
<details>
<summary>Practical Task 1: Linux Virtual Machine Setup and NSG Configuration. Create and configure a Linux Virtual Machine (VM) on Azure and secure it with a Network Security
Group (NSG).</summary>
Requirements: 
<details>
<summary> 1. Create a Linux VM (Ubuntu or CentOS) in Azure using the free tier. </summary>
 https://github.com/AnnaMushchynina/Azure-DevOps/blob/13a1dab9d48d0c0b2b4607b19c0859eca23cceb8/1.1.1%20Basic.jpg
https://github.com/AnnaMushchynina/Azure-DevOps/blob/13a1dab9d48d0c0b2b4607b19c0859eca23cceb8/1.1.2%20ssh.jpg
 https://github.com/AnnaMushchynina/Azure-DevOps/blob/13a1dab9d48d0c0b2b4607b19c0859eca23cceb8/1.1.3%20net.jpg
 https://github.com/AnnaMushchynina/Azure-DevOps/blob/13a1dab9d48d0c0b2b4607b19c0859eca23cceb8/1.1.4%20review.jpg
</details>
 <details>
<summary> 2. Connect to the VM via SSH using a public-private key pair. </summary>
  https://github.com/AnnaMushchynina/Azure-DevOps/blob/13a1dab9d48d0c0b2b4607b19c0859eca23cceb8/1.2connect_ssh.jpg
</details>
 <details>
<summary> 3. Install and configure an Nginx web server on the VM. </summary>
  https://github.com/AnnaMushchynina/Azure-DevOps/blob/13a1dab9d48d0c0b2b4607b19c0859eca23cceb8/1.3_install_nginx.jpg
</details>
 <details>
<summary> 4. Create and configure a Network Security Group (NSG) to allow only HTTP (port 80) and SSH
(port 22) traffic. </summary>
  https://github.com/AnnaMushchynina/Azure-DevOps/blob/13a1dab9d48d0c0b2b4607b19c0859eca23cceb8/1.4_nsq.jpg
</details>
 <details>
<summary> 5. Test access to the Nginx web server from a browser. </summary>
  https://github.com/AnnaMushchynina/Azure-DevOps/blob/13a1dab9d48d0c0b2b4607b19c0859eca23cceb8/1.5_test_nginx.jpg
</details>
 </details>
<details>
<summary>Practical Task 2: Windows Virtual Machine and RDP Access Setup.
Set up a Windows Virtual Machine (VM) on Azure and configure access via Remote Desktop
Protocol (RDP).</summary>
Requirements:
<details>
<summary>1. Create a Windows VM (e.g., Windows Server 2019) in Azure using the free tier</summary>
 https://github.com/AnnaMushchynina/Azure-DevOps/blob/4a33a751e7cfa098d24c4751424a32a108f7525d/2.1.1%20Basic_W.jpg
 </details>
 <details>
<summary>2. Enable and configure Remote Desktop Protocol (RDP) for secure access to the VM.</summary>
  https://github.com/AnnaMushchynina/Azure-DevOps/blob/4a33a751e7cfa098d24c4751424a32a108f7525d/2.2%20NSG_A_RDP.jpg
  </details>
  <details>
<summary>3. Connect to the VM via RDP using Azure credentials.</summary>
  https://github.com/AnnaMushchynina/Azure-DevOps/blob/4a33a751e7cfa098d24c4751424a32a108f7525d/2.3.1%20RDP_dow.jpg
  https://github.com/AnnaMushchynina/Azure-DevOps/blob/4a33a751e7cfa098d24c4751424a32a108f7525d/2.3.2%20RDP_con.jpg
  </details>
 <details>
<summary>4. Install a web server role (IIS) and deploy a simple test HTML page.</summary>
 https://github.com/AnnaMushchynina/Azure-DevOps/blob/4a33a751e7cfa098d24c4751424a32a108f7525d/2.4%20Inst_IIS.jpg
  https://github.com/AnnaMushchynina/Azure-DevOps/blob/4a33a751e7cfa098d24c4751424a32a108f7525d/2.4.2%20IIS_testp.jpg
  https://github.com/AnnaMushchynina/Azure-DevOps/blob/4a33a751e7cfa098d24c4751424a32a108f7525d/2.4.3%20open_80.jpg
  </details>
<details>
<summary>5. Verify access to the test page from a browser.</summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/4a33a751e7cfa098d24c4751424a32a108f7525d/2.5%20site_80_out.jpg
  </details>  
 
  </details>
<details>
<summary>Practical Task 3: Configuring an Azure Load Balancer.
Create and configure a Basic Azure Load Balancer to distribute traffic across multiple virtual
machines.</summary>
Requirements:
<details>
<summary>1. Create two Linux or Windows virtual machines in the same region and virtual network using
the Azure Free Tier.</summary>  
 https://github.com/AnnaMushchynina/Azure-DevOps/blob/e6635f317c09ea4175cb8ac390a7af24a63ddb3c/3.1%20LinuxVM2.jpg
</details>
 <details>
<summary>2. Install and configure a web server (e.g., Nginx on Linux or IIS on Windows) on both VMs with
unique content for testing.</summary>  
  https://github.com/AnnaMushchynina/Azure-DevOps/blob/e6635f317c09ea4175cb8ac390a7af24a63ddb3c/3.2%20LinuxVM_cont.jpg
</details>
 <details>
<summary>3. Create a Basic Load Balancer in Azure (included in the free tier) and configure it to balance
HTTP (port 80) traffic between the two virtual machines.</summary>  
  https://github.com/AnnaMushchynina/Azure-DevOps/blob/e6635f317c09ea4175cb8ac390a7af24a63ddb3c/3.3%20LB1.jpg
  https://github.com/AnnaMushchynina/Azure-DevOps/blob/e6635f317c09ea4175cb8ac390a7af24a63ddb3c/3.3%20LB2.jpg
</details>
 <details>
<summary>4. Configure a health probe to monitor the availability of the VMs. </summary>  
  https://github.com/AnnaMushchynina/Azure-DevOps/blob/e6635f317c09ea4175cb8ac390a7af24a63ddb3c/3.4%20Probe.jpg
</details>
 <details>
<summary>5. Test the Load Balancer by accessing its public IP address from a browser and verify that
traffic is routed to both VMs (by observing the unique content from each server).</summary>  
  https://github.com/AnnaMushchynina/Azure-DevOps/blob/e6635f317c09ea4175cb8ac390a7af24a63ddb3c/3.5%20LB_UPVM1.jpg
  https://github.com/AnnaMushchynina/Azure-DevOps/blob/e6635f317c09ea4175cb8ac390a7af24a63ddb3c/3.5%20LB_DownVM1.jpg  
</details>
</details>

<details>
<summary>Practical Task 4: Configuring a Basic Load Balancer with Virtual Machine Scale Sets (VMSS).
Set up a Basic Azure Load Balancer to distribute traffic across a Virtual Machine Scale Set (VMSS).</summary>
Requirements:
<details>
<summary>1. Create a Virtual Machine Scale Set (VMSS) in Azure using Linux or Windows instances
within the free tier (for example B1s size). Limit the scale set to two VM instances to avoid
exceeding the free-tier 750-hour limit. </summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/52055fe6435207e4900f15b5c13271d3f2533f7b/4.1%20ScaleVM_1.jpg
https://github.com/AnnaMushchynina/Azure-DevOps/blob/52055fe6435207e4900f15b5c13271d3f2533f7b/4.1%20ScaleVM_2.jpg
</details>
<details>
<summary>2. Deploy the scale set with a custom configuration to install and configure a web server (e.g.,
Nginx on Linux or IIS on Windows) on each VM instance.</summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/52055fe6435207e4900f15b5c13271d3f2533f7b/4.2%20Script.jpg
https://github.com/AnnaMushchynina/Azure-DevOps/blob/52055fe6435207e4900f15b5c13271d3f2533f7b/script.sh
</details>
<details>
<summary>3. Configure the Basic Load Balancer to distribute HTTP (port 80) traffic across the VM
instances in the scale set.</summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/52055fe6435207e4900f15b5c13271d3f2533f7b/4.3%20LB.jpg
</details>
<details>
<summary>4. Add a health probe to monitor the availability of instances in the VMSS. </summary>
</details>
<details>
<summary>5. Scale the VMSS manually by increasing the number of instances to verify the Load Balancer
routes traffic to the newly added VMs. </summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/52055fe6435207e4900f15b5c13271d3f2533f7b/4.5%20Scale.jpg
</details>
<details>
<summary>6. Test the setup by accessing the Load Balancer's public IP address and verifying traffic
distribution across multiple VM instances.</summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/52055fe6435207e4900f15b5c13271d3f2533f7b/4.6%20LB2VM.jpg
</details>
</details>

<details>
<summary>Practical Task 5: Deploying a Web Application Using Azure App Services.
Set up and deploy a simple web application using Azure App Services.</summary>
Requirements:
<details>
<summary>1. Create an Azure App Service (Web App) using the Azure Free Tier.</summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/9ead6f0a23104a6e6a0cc6955130729451b01f6a/5.1%20create%20webapp.jpg
</details>
<details>
<summary>2. Select the runtime stack of your choice (e.g., .NET, Python, Node.js) during the setup.</summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/9ead6f0a23104a6e6a0cc6955130729451b01f6a/5.2%20runtime.jpg
</details>
<details>
<summary>3. Develop or use a sample web application (e.g., a "Hello World" app) and deploy it to the App </summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/9ead6f0a23104a6e6a0cc6955130729451b01f6a/5.3%20add_repo.jpg
 https://github.com/AnnaMushchynina/Azure-DevOps/blob/9ead6f0a23104a6e6a0cc6955130729451b01f6a/5.3%20new_web_app.jpg
 https://github.com/AnnaMushchynina/Azure-DevOps/blob/9ead6f0a23104a6e6a0cc6955130729451b01f6a/5.3%20new_web_app1.jpg
</details>
<details>
<summary>4. Test the deployed application by accessing its URL provided by Azure App Services.</summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/9ead6f0a23104a6e6a0cc6955130729451b01f6a/5.4%20app%20deploy.jpg
 https://github.com/AnnaMushchynina/Azure-DevOps/blob/9ead6f0a23104a6e6a0cc6955130729451b01f6a/5.4%20app%20inet.jpg
</details>
<details>
<summary>5. Enable App Service Logs and verify that application logs are being generated.</summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/9ead6f0a23104a6e6a0cc6955130729451b01f6a/5.5%20service%20logs.jpg
 https://github.com/AnnaMushchynina/Azure-DevOps/blob/9ead6f0a23104a6e6a0cc6955130729451b01f6a/5.5%20log%20stream.jpg
</details>
</details>

<details>
<summary>Practical Task 6: Creating and Deploying an Azure Function to Process HTTP Requests.
Set up and deploy an Azure Function that processes HTTP requests directly from the Azure portal.</summary>
Requirements:
<details>
<summary>1. Set Up the Function App:</summary>
</details>
</details>
</details>
<details>
<summary>
 Azure Storage and Databases Practical tasks</summary>
<details>
<summary>Practical Task 1: Upload and Retrieve Files with Azure Blob Storage.
Use Azure Blob Storage for storing and retrieving files.</summary>
Requirements:
<details>
<summary>1. Create a new storage account in Azure. </summary>

</details>
<details>
<summary>2. Set up a Blob container named "my-container" with public access.</summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/0705403959c343f1fae94a2e8f2d5935c198b2b9/1.2%20Create%20container.jpg
</details>
<details>
<summary>3. Upload a sample text file to the Blob container using the Azure portal </summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/0705403959c343f1fae94a2e8f2d5935c198b2b9/1.3%20add%20simple%20file.jpg
</details>
<details>
<summary>4. Download the uploaded file to verify successful retrieval. </summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/0705403959c343f1fae94a2e8f2d5935c198b2b9/1.4%20Download%20the%20uploaded.jpg
</details>
<details>
<summary>5. Use Azure Storage Explorer to manage and view blobs in your container. </summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/0705403959c343f1fae94a2e8f2d5935c198b2b9/1.5%20Azure%20Storage%20Explorer.jpg
</details>
</details>
<details>
<summary>Practical Task 2: Lifecycle Management for Blob Storage.
Implement lifecycle management policies to optimize storage costs.</summary>
Requirements:
<details>
<summary>1. Create a storage account and a Blob container named "lifecycle-container."</summary>
 https://github.com/AnnaMushchynina/Azure-DevOps/blob/0705403959c343f1fae94a2e8f2d5935c198b2b9/2.1%20Create%20a%20storage%20account.jpg
https://github.com/AnnaMushchynina/Azure-DevOps/blob/0705403959c343f1fae94a2e8f2d5935c198b2b9/2.1%20Create%20a%20container.jpg
</details>
<details>
<summary>2. Upload multiple files of varying sizes to the container</summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/0705403959c343f1fae94a2e8f2d5935c198b2b9/2.2%20Upload%20multiple%20files.jpg
</details>
<details>
<summary>3. Create a lifecycle management policy to move blobs to the Cool tier after 30 days and
delete blobs older than 90 days.</summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/0705403959c343f1fae94a2e8f2d5935c198b2b9/2.3%20.%20Create%20a%20lifecycle.jpg
</details>
<details>
<summary>4. Simulate policy execution by manually testing with different file creation timestamps</summary>

</details>
<details>
<summary>5. Verify that blobs are moved or deleted according to the policy. </summary>

</details>
</details>
<details>
<summary>Practical Task 3: Implementing an Azure Queue for Message Storage
Create and manage an Azure Queue to store and process messages.</summary>
Requirements:
<details>
<summary>1. Create a storage account and enable the Queue service. </summary>

</details>
<details>
<summary>2. Create a queue named "task-queue."</summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/4f49183cc0222021a77019b0e6458e409d27bee4/3.2%20%20Create%20task-queue.jpg
</details>
<details>
<summary>3. Use Azure Storage Explorer or the Azure portal to add messages to the queue.</summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/4f49183cc0222021a77019b0e6458e409d27bee4/3.3%20add%20messages%20to%20the%20queue.jpg
</details>
<details>
<summary>4. Retrieve and process messages directly using Azure Storage Explorer or the Azure portal
interface.</summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/4f49183cc0222021a77019b0e6458e409d27bee4/3.4%20Dequeue.jpg
</details>
<details>
<summary>5. Verify that processed messages are removed from the queue manually.</summary>

</details>
</details>
<details>
<summary>Practical Task 4: Configuring Azure File Share and Mounting on a Local Machine.
Set up and access Azure File Storage for shared file access.</summary>
Requirements:
<details>
<summary>1. Create a storage account and set up an Azure File Share.</summary>

</details>
<details>
<summary>2. Upload a file to the file share using the Azure portal.</summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/4f49183cc0222021a77019b0e6458e409d27bee4/4.2%20file%20share.jpg
 https://github.com/AnnaMushchynina/Azure-DevOps/blob/4f49183cc0222021a77019b0e6458e409d27bee4/4.2.1%20upload%20file.jpg
</details>
<details>
<summary>3. Generate a connection script for Windows or Linux and use it to mount the file share on your
local machine.</summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/4f49183cc0222021a77019b0e6458e409d27bee4/4.3%20generate%20connection%20script.jpg
 https://github.com/AnnaMushchynina/Azure-DevOps/blob/4f49183cc0222021a77019b0e6458e409d27bee4/4.3.1%20mount%20the%20file%20share.jpg
 https://github.com/AnnaMushchynina/Azure-DevOps/blob/4f49183cc0222021a77019b0e6458e409d27bee4/4.3.2%20disk%20Z.jpg
</details>
<details>
<summary>4. Verify the mounted file share and ensure it displays the uploaded file. </summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/4f49183cc0222021a77019b0e6458e409d27bee4/4.4%20file%20.jpg
</details>
<details>
<summary>5. Add another file to the file share from the local machine and confirm it reflects in Azure.</summary>

</details>
</details>

<details>
<summary>Practical Task 5: Storing and Querying Data with Azure Table Storage.
Set up and use Azure Table Storage for structured data.</summary>
Requirements:
<details>
<summary>1. Create a storage account and enable the Table service.</summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/0d4d0194344ddb20dc3169cdd9e919c31b197d86/5.1%20create%20table.jpg
</details>
<details>
<summary>2. Create a table named "employee-data".</summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/0d4d0194344ddb20dc3169cdd9e919c31b197d86/5.2%20ase.jpg
</details>
<details>
<summary>3. Add sample data (e.g., employee IDs, names, and roles) to the table using Azure Storage
Explorer or Azure CLI.</summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/0d4d0194344ddb20dc3169cdd9e919c31b197d86/5.3%20add%20date.jpg
</details>
<details>
<summary>4. Query the table for specific data using filters (e.g., "Role = Developer").</summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/0d4d0194344ddb20dc3169cdd9e919c31b197d86/5.4%20query.jpg
</details>
<details>
<summary>5. Delete specific entries from the table and verify the changes.</summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/0d4d0194344ddb20dc3169cdd9e919c31b197d86/5.5%20delete.jpg
</details>
</details>

<details>
<summary>Practical Task 6: Configuring Shared Access Signatures (SAS) for Secure Access.
Secure Azure Storage services using SAS tokens.</summary>
Requirements:
<details>
<summary>1. Create a storage account with Blob, File, Queue, and Table services enabled.</summary>

</details>
<details>
<summary>2. Generate a Shared Access Signature (SAS) token for Blob storage with limited permissions
(e.g., read-only access).</summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/0d4d0194344ddb20dc3169cdd9e919c31b197d86/6.2%20add%20file%20for%20container.jpg
 https://github.com/AnnaMushchynina/Azure-DevOps/blob/0d4d0194344ddb20dc3169cdd9e919c31b197d86/6.2%20create%20shared%20acc%20sig.jpg
 https://github.com/AnnaMushchynina/Azure-DevOps/blob/0d4d0194344ddb20dc3169cdd9e919c31b197d86/6.2.1%20generate%20connection%20string.jpg
</details>
<details>
<summary>3. Share the SAS token URL and verify access to the Blob container with the token.</summary>

</details>
<details>
<summary>4. Repeat the process for File, Queue, and Table services with different permissions.</summary>

</details>
<details>
<summary>5. Analyze the security implications of SAS tokens and expiry times.</summary>

</details>
</details>

<details>
<summary>Practical Task 7: Implementing Security Best Practices with Azure RBAC and Managed
Identities.
Securely manage access to Azure resources and integrate services using Managed Identities.</summary>
Requirements:
<details>
<summary>1. Configure Azure RBAC for a Storage Account:</summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/0d4d0194344ddb20dc3169cdd9e919c31b197d86/7.1%20add%20Storage%20Blob%20Data%20Contributor%20role.jpg
</details>
<details>
<summary>2. Set Up a Managed Identity for an Azure Virtual Machine:</summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/0d4d0194344ddb20dc3169cdd9e919c31b197d86/7.2%20add%20role.jpg
 https://github.com/AnnaMushchynina/Azure-DevOps/blob/0d4d0194344ddb20dc3169cdd9e919c31b197d86/7.2%20add%20VM.jpg
 https://github.com/AnnaMushchynina/Azure-DevOps/blob/0d4d0194344ddb20dc3169cdd9e919c31b197d86/7.3%20add%20script.jpg
 https://github.com/AnnaMushchynina/Azure-DevOps/blob/0d4d0194344ddb20dc3169cdd9e919c31b197d86/7.4%20show%20container%20with%20cli.jpg
</details>
</details>

<details>
<summary>Practical Task 8: Creating and Querying an Azure SQL Database.
Learn to create and query an Azure SQL Database using the Azure portal.</summary>
Requirements:
<details>
<summary>1. Create an Azure SQL Database named "test-db" in a new logical SQL server. </summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/0d4d0194344ddb20dc3169cdd9e919c31b197d86/8.1%20create%20test-db.jpg
</details>
<details>
<summary>2. Set the pricing tier to the free tier for cost optimization.</summary>

</details>
<details>
<summary>3. Use the Query Editor in the Azure portal to create a table named "Products" with columns
for ID, Name, and Price.</summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/0d4d0194344ddb20dc3169cdd9e919c31b197d86/8.3%20create%20products.jpg
</details>
<details>
<summary>4. Insert a few sample records into the "Products" table using a SQL query. </summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/0d4d0194344ddb20dc3169cdd9e919c31b197d86/8.4%20insert%20products.jpg
</details>
<details>
<summary>5. Query the table to display all records and verify the data.</summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/0d4d0194344ddb20dc3169cdd9e919c31b197d86/8.5%20show%20products.jpg
</details>
</details>

<details>
<summary>Practical Task 9: Deploying an Azure SQL Database with Automated Backup Configuration
Set up an Azure SQL Database and configure automated backups.</summary>
Requirements:
<details>
<summary>1. Create an Azure SQL Database in a new or existing resource group. </summary>

</details>
<details>
<summary>2. Choose the desired service tier (e.g., Basic or General Purpose).</summary>

</details>
<details>
<summary>3. Enable and configure long-term backup retention for the database</summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/0d4d0194344ddb20dc3169cdd9e919c31b197d86/9.3%20enable%20long%20term.jpg
</details>
<details>
<summary>4. Use the Azure portal to verify backup settings and review available restore points. </summary>

</details>
<details>
<summary>5. Test the restore process by creating a new database from a backup. </summary>

</details>
</details>

<details>
<summary>Practical Task 10: Getting Started with Cosmos DB
Set up and explore Cosmos DB by creating a database, managing data, querying, and testing key
features like consistency and global distribution.</summary>
Requirements:
<details>
<summary>1. Create a Cosmos DB Account: </summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/0d4d0194344ddb20dc3169cdd9e919c31b197d86/10.1%20create%20cosmodb.jpg
</details>
<details>
<summary>2. Set Up a Database and Container: </summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/0d4d0194344ddb20dc3169cdd9e919c31b197d86/10.2%20create%20sample%20db.jpg
 https://github.com/AnnaMushchynina/Azure-DevOps/blob/0d4d0194344ddb20dc3169cdd9e919c31b197d86/10.2.1%20create%20items.jpg
 https://github.com/AnnaMushchynina/Azure-DevOps/blob/0d4d0194344ddb20dc3169cdd9e919c31b197d86/10.2.2%20add%20items.jpg
</details>
<details>
<summary>3. Insert Data Using Data Explorer:</summary>

</details>
<details>
<summary>4. Query Data in Cosmos DB: </summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/0d4d0194344ddb20dc3169cdd9e919c31b197d86/10.4%20query.jpg
 https://github.com/AnnaMushchynina/Azure-DevOps/blob/0d4d0194344ddb20dc3169cdd9e919c31b197d86/10.4.1%20query%20ele.jpg
</details>
<details>
<summary>5. Configure and Test Consistency Levels: </summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/0d4d0194344ddb20dc3169cdd9e919c31b197d86/10.5%20session.jpg
 https://github.com/AnnaMushchynina/Azure-DevOps/blob/0d4d0194344ddb20dc3169cdd9e919c31b197d86/10.5.1%20session%20test.jpg
</details>
<details>
<summary>6. Enable Global Distribution and Test Replication: </summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/0d4d0194344ddb20dc3169cdd9e919c31b197d86/10.6%20add%20region.jpg
 https://github.com/AnnaMushchynina/Azure-DevOps/blob/0d4d0194344ddb20dc3169cdd9e919c31b197d86/10.6%20strong.jpg
</details>

</details>

</details>

<details>
<summary>Containerization and Orchestration Practical tasks</summary>
<details>
<summary>Practical Task 1: Deploy a Docker Container to Azure Container Instances (ACI) via Azure
Portal</summary>
Requirements:
<details>
<summary>1. Create a lightweight Docker image for a simple web application (e.g., a Python Flask app)
with minimal dependencies to reduce resource usage.</summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/28b7858460ea6618927fd59575ba6109eaa8b6a9/1.1%20create%20flask%20app.jpg

</details>
<details>
<summary>2. Push the Docker image to Azure Container Registry (ACR) using a low-cost storage option.</summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/28b7858460ea6618927fd59575ba6109eaa8b6a9/1.2%20create%20container%20registry%20azure.jpg
https://github.com/AnnaMushchynina/Azure-DevOps/blob/28b7858460ea6618927fd59575ba6109eaa8b6a9/1.2.1%20push%20the%20docker%20to%20azure.jpg
</details>
<details>
<summary>3. Use a lightweight ACI instance (e.g., B1s) to deploy the Docker container from ACR.</summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/28b7858460ea6618927fd59575ba6109eaa8b6a9/1.3%20deploy%20the%20container%20to%20azure.jpg
</details>
<details>
<summary>4. Verify the deployment by accessing the web application via the public IP address provided
by ACI.</summary>

</details>
<details>
<summary>5. Remove the ACI container after verifying the deployment to stop billing.</summary>

</details>

</details>
<details>
<summary>Practical Task 2: Configure Environment Variables in ACI via Azure Portal</summary>
Requirements:
<details>
<summary>1. Modify your Docker image to read configuration values from environment variables,
ensuring minimal environmental complexity.</summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/28b7858460ea6618927fd59575ba6109eaa8b6a9/2.1%20Modify%20docker%20image.jpg
</details>
<details>
<summary>2. Reuse the ACI instance from Task 1 to deploy the container and specify the necessary
environment variables.</summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/28b7858460ea6618927fd59575ba6109eaa8b6a9/2.2%20%20deploy%20container.jpg
</details>
<details>
<summary>3. Verify that the application is correctly using the environment variables by checking its
output.</summary>

</details>
<details>
<summary>4. Remove the ACI container after verifying that the application correctly uses the
environment variables.</summary>

</details>

</details>
<details>
<summary>Practical Task 3: Scale Out with Azure Container Instances via Azure Portal</summary>
Requirements:
<details>
<summary>1. Deploy a stateless Docker container to Azure Container Instances using a lightweight
configuration (e.g., B1s instances).</summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/28b7858460ea6618927fd59575ba6109eaa8b6a9/3.1%20manually%20scale.jpg
</details>
<details>
<summary>2. Manually scale out to the minimum number of instances required (e.g., 2–3) to test load
distribution.</summary>

</details>
<details>
<summary>3. Stop all ACI instances after completing the testing to reduce ongoing costs.</summary>

</details>


</details>
<details>
<summary>Practical Task 4: Secure a Docker Container in ACI with Managed Identity via Azure Portal</summary>
Requirements:
<details>
<summary>1. Deploy a Docker container to Azure Container Instances using the existing lightweight ACI
setup from previous tasks.</summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/28b7858460ea6618927fd59575ba6109eaa8b6a9/4.1%20container%20principial.jpg
</details>
<details>
<summary>2. Configure a Managed Identity for the ACI and securely access an Azure service (e.g., Azure
Key Vault) with minimal permissions and access scope.</summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/28b7858460ea6618927fd59575ba6109eaa8b6a9/4.2%20keyvaultrole.jpg
</details>
<details>
<summary>3. Retrieve only a single secret from Azure Key Vault for testing purposes.</summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/28b7858460ea6618927fd59575ba6109eaa8b6a9/4.3%20testing.jpg
</details>
<details>
<summary>4. Remove the ACI container after verifying secure access.</summary>

</details>

</details>
<details>
<summary>Practical Task 5: Deploy a Kubernetes Cluster with AKS via Azure Portal</summary>
Requirements:
<details>
<summary>1. Create an Azure Kubernetes Service (AKS) cluster with the smallest VM size (e.g., B2s) and
the minimum number of nodes (e.g., 1–2).</summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/28b7858460ea6618927fd59575ba6109eaa8b6a9/5.1%20Create%20an%20Azure%20Kubernetes%20Service.jpg
</details>
<details>
<summary>2. Connect to the AKS cluster using Azure Cloud Shell with kubectl.</summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/28b7858460ea6618927fd59575ba6109eaa8b6a9/5.2%20Azure%20Cloud%20Shell%20with%20kubectl.jpg
</details>
<details>
<summary>3. Deploy a lightweight Nginx application for verification.</summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/28b7858460ea6618927fd59575ba6109eaa8b6a9/5.3%20deploy%20nginx.jpg
</details>
<details>
<summary>4. Delete the AKS cluster immediately after testing to avoid additional VM and cluster costs.</summary>

</details>

</details>

<details>
<summary>Practical Task 6: Deploy a Containerized Application on AKS</summary>
Requirements:
<details>
<summary>1. Build a lightweight Docker image for a simple web application (e.g., a Node.js app with
minimal dependencies) and push it to Azure Container Registry (ACR).</summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/28b7858460ea6618927fd59575ba6109eaa8b6a9/6.1%20build%20docker%20image.jpg
https://github.com/AnnaMushchynina/Azure-DevOps/blob/28b7858460ea6618927fd59575ba6109eaa8b6a9/6.1.2%20push%20to%20azure%20container.jpg
</details>
<details>
<summary>2. Reuse the AKS cluster from Task 5 to deploy the application using a Kubernetes deployment
and service manifest file.</summary>

</details>
<details>
<summary>3. Test the application for a limited time and remove the deployment afterward.</summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/28b7858460ea6618927fd59575ba6109eaa8b6a9/6.3%20test%20app.jpg
</details>


</details>

<details>
<summary>Practical Task 7: Configure and Use ConfigMaps and Secrets in AKS</summary>
Requirements:
<details>
<summary>1. Create a ConfigMap to store non-sensitive configuration data with only the required keyvalue pairs for the application.</summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/28b7858460ea6618927fd59575ba6109eaa8b6a9/7.1%20create%20config%20map.jpg
</details>
<details>
<summary>2. Create a Kubernetes Secret to store sensitive data (e.g., API keys) with the least amount of
information needed.</summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/28b7858460ea6618927fd59575ba6109eaa8b6a9/7.2%20create%20secret.jpg
</details>
<details>
<summary>3. Update the application deployment to use the ConfigMap and Secret.</summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/28b7858460ea6618927fd59575ba6109eaa8b6a9/7.3%20update%20app.jpg
</details>
<details>
<summary>4. Remove the ConfigMap, Secret, and deployment after testing.</summary>

</details>

</details>

<details>
<summary>Practical Task 8: Scale Applications in AKS</summary>
Requirements:
<details>
<summary>1. Deploy a stateless application to the AKS cluster using minimal resource specifications.</summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/28b7858460ea6618927fd59575ba6109eaa8b6a9/8.1%20deploy%20app.jpg
</details>
<details>
<summary>2. Use the kubectl scale command to manually scale the application to only 2–3 replicas for
testing.</summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/28b7858460ea6618927fd59575ba6109eaa8b6a9/8.2%20scale.jpg
</details>
<details>
<summary>3. Set up Horizontal Pod Autoscaler (HPA) with reasonable CPU usage thresholds to minimize
pod creation.</summary>

</details>
<details>
<summary>4. Simulate load on the application for a short duration and remove the deployment after
observing the scaling behavior.</summary>

</details>

</details>

<details>
<summary>Practical Task 9: Rolling Update of an Application in AKS</summary>
Requirements:
<details>
<summary>1. Deploy a lightweight version of your application to the AKS cluster.</summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/28b7858460ea6618927fd59575ba6109eaa8b6a9/9.1%20node%20app.jpg
</details>
<details>
<summary>2. Update the Docker image to a new version with minimal changes (e.g., color change).</summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/28b7858460ea6618927fd59575ba6109eaa8b6a9/9.2%20update%20app.jpg
</details>
<details>
<summary>3. Perform a rolling update using kubectl set image with minimal replicas to reduce resource
usage.</summary>

</details>
<details>
<summary>4. Verify the update process quickly and remove the deployment after the update.</summary>

</details>

</details>

<details>
<summary>Bonus task. GitOps with AKS </summary>
Requirements:
<details>
<summary>1. Setup ArgoCD on Azure Kubernetes Services</summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/28b7858460ea6618927fd59575ba6109eaa8b6a9/10.1%20setup%20argoCD.jpg
https://github.com/AnnaMushchynina/Azure-DevOps/blob/2656c45ab30512e9c8d4d10f817cd4c729b51412/10.1.2%20connect%20argocd.jpg
https://github.com/AnnaMushchynina/Azure-DevOps/blob/2656c45ab30512e9c8d4d10f817cd4c729b51412/10.1.3%20add%20app%20to%20argocd.jpg
</details>
<details>
<summary>2. Perform image update on cluster</summary>
https://github.com/AnnaMushchynina/Azure-DevOps/blob/2656c45ab30512e9c8d4d10f817cd4c729b51412/10.2%20update%20app.jpg

</details>


</details>

</details>




