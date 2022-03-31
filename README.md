# Infrastructure Automation

## Getting credential file

Go to the create service account key page. Select the default service account, select JSON as the key type, and click Create.

## Terraforming!

Set variables in variables.tf

- region: Region to be set in GCP (default us-west1)
- account_file_path: Path to credential file, downloaded from google console.
- project-name: GCP project ID	

Run the following to pull in the providers.

```bash
terraform init
```

Check resources to be created

```bash
terraform plan
```

If every thing seems ok, Apply plan
```bash
terraform apply
```
## Cleanup

Run the following to remove the resources Terraform provisioned:

```bash
terraform destroy
```
