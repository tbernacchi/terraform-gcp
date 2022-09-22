# Learn Terraform
# HA PostgreSQL database.

This repo is a hand's on demonstration of the resource [google_sql_database_instance](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance) from Terraform documentation containing configuration files to provision an HA PostgreSQL database on GCP.

## Usage

Setting all variables need it on the `variables.tf` and then:

```
terraform init
terraform plan --out=plan
terraform apply "plan"
```
After a couple of minutes you'll have a HA PostgreSQL database deployed on your GCP VPC network.

Take note of all the sensitive information that will print on the screen, we're going to use those on the `conf.toml` file.
