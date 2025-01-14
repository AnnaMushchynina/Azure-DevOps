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


</details>
</details>
</details>
