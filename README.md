# Terraform GCP
Infra to deploy a simple Golang application on GKE that is backed by a Postgres database.

# Instructions

This project contains three directories for the GTD Golang app on [GCP](https://cloud.google.com).


## app

It's the application itself. Read the `readme.md`.

## terraform

To deploy the necessary infra. It consists of a [HA Postgresql](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance) plus a [GKE](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/container_cluster) cluster.

## k8s 

The `.yaml` files to deploy the application on [GKE](https://cloud.google.com/kubernetes-engine).


## Requirements

* Docker;
* Terraform;
* gcloud CLI;
* GCP;
* kubectl;


## Usage

Before you deploy your `terraform` you've to make sure you have all the necessary permissions of these components on GCP: 

Examples:

* [service-account](https://cloud.google.com/iam/docs/service-accounts);
* [admin-api](https://cloud.google.com/sql/docs/postgres/admin-api);
* [service-networking](https://cloud.google.com/service-infrastructure/docs/service-networking/getting-started);
* [compute-engine-api](https://cloud.google.com/compute/docs/reference/rest/v1);

## Initial setup GCP

```bash
gcloud auth login
```

```bash
gcloud projects list
```

```bash
gcloud config set project <my-project>
```

```bash
gcloud auth application-default login
```

```bash
gcloud iam service-accounts create sa-terraform — display-name
```

```bash
gcloud projects add-iam-policy-binding PROJECT_ID — member="serviceAccount:sa-terraform@PROJECT_ID.iam.gserviceaccount.com" — role="roles/cloudsql.admin"
```

# References
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
