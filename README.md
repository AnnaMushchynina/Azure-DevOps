# Azure-DevOps
study repo

# Azure Identity and Access Management tasks
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
