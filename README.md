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
https://github.com/AnnaMushchynina/Azure-DevOps/blob/fde249bdc519212f393fc1d4d1a404446b0b02a5/1.2_users.jpg
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
