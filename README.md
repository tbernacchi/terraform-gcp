# terraform-gcp-gke-postgresql
> Infra to deploy a GKE kubernetes cluster on GCP plus a HA Postgres database.

![Terraform](/.github/assets/img/terraform-logo.png)

<div align=>
	<img align="center" width="200px" src=/.github/assets/img/google-cloud-logo.png>
</div>

## Instructions

This project contains three directories:

- app - It's the application itself. Read the `readme.md`.
- k8s - kubernetes manifests to deploy the application;
- terraform - `.tf` files to deploy the [GKE cluster](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/container_cluster) and the [PostgreSQL database](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance); 

## Requirements

* Docker;
* Terraform;
* gcloud CLI;
* GCP;
* kubectl;


## GCP

Before you deploy your `terraform` you've to make sure you have all the necessary permissions:

Examples:

* [service-account](https://cloud.google.com/iam/docs/service-accounts);
* [admin-api](https://cloud.google.com/sql/docs/postgres/admin-api);
* [service-networking](https://cloud.google.com/service-infrastructure/docs/service-networking/getting-started);
* [compute-engine-api](https://cloud.google.com/compute/docs/reference/rest/v1);

## setup 

```bash
gcloud auth login
gcloud projects list
gcloud config set project <my-project>
gcloud auth application-default login
gcloud iam service-accounts create sa-terraform — display-name
gcloud projects add-iam-policy-binding PROJECT_ID — member="serviceAccount:sa-terraform@PROJECT_ID.iam.gserviceaccount.com" — role="roles/cloudsql.admin"
```

## References
https://cloud.google.com/iam/docs/service-accounts
https://cloud.google.com/sql/docs/postgres/admin-api
https://cloud.google.com/service-infrastructure/docs/service-networking/getting-started
https://cloud.google.com/compute/docs/reference/rest/v1
https://cloud.google.com/sdk/docs

## Author

👤 **Tadeu Bernacchi**

* Website: http://www.tadeubernacchi.com.br/
* Twitter: [@tadeuuuuu](https://twitter.com/tadeuuuuu)
* Github: [@tbernacchi](https://github.com/tbernacchi)
* LinkedIn: [@tadeubernacchi](https://linkedin.com/in/tadeubernacchi)

## Show your support

Give a ⭐️ if this project helped you!
