1. Login to AWS console using the root account
2. Create a new `Admin` group with `AdministratorAccess` policy (`IAM User Groups` -> `Create group` -> `Attach permissions policies - Optional` -> `AdministratorAccess`)
3. Create a new IAM user name `aws-examples` and assign it to the `Admin` group (`IAM Users` -> `Create User` -> `Add User to group` -> `Create User`)
4. Copy the `AWS_ACCESS_KEY_ID`, `AWS_SECRET_ACCESS_KEY` and configure it locally via `aws configure` 
5. Check with 
    ```powershell
    PS > aws sts get-caller-identity
    File association not found for extension .py
    {
        "UserId": "AIDA2KX7BF37ZU4HPTM2V",
        "Account": "710278196991",
        "Arn": "arn:aws:iam::710278196991:user/aws-examples"
    }
    ```