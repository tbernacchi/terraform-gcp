# Learn Terraform - Provision a GKE Cluster

This repo is a companion repo to the [Provision a GKE Cluster learn guide](https://learn.hashicorp.com/terraform/kubernetes/provision-gke-cluster), containing Terraform configuration files to provision an GKE cluster on GCP. This repo DOES NOT create a VPC and subnet for the GKE cluster. You're going to set yours on the code.

## Usage

```
terraform init
terraform plan --out=plan
terraform apply "plan"
```

Wait a couple of minutes and you'll have a HA GKE Cluster up and running.


