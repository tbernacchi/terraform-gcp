# Learn Terraform - Provision a GKE Cluster

This repo is a companion repo to the [Provision a GKE Cluster learn guide](https://learn.hashicorp.com/terraform/kubernetes/provision-gke-cluster), containing Terraform configuration files to provision an GKE cluster on GCP.
# Learning Terraform
# HA PostgreSQL database.

This repo is a hand's on demonstration of the resource [google_sql_database_instance](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance)(https://learn.hashicorp.com/terraform/kubernetes/provision-gke-cluster) from Terraform documentation containing configuration files to provision an HA PostgreSQL database on GCP.

## Usage

Setting all variables need it on the `variables.tf` and then:

```
terraform init
terraform plan --out=plan
terraform apply "plan"
```
After a couple of minutes you'll have a HA PostgreSQL database deployed on your GCP VPC network.

Take note of the IP address the output will print on the screen, we're going to use that IP address on the `conf.toml` file on the `app` directory. 
