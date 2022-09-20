variable "db_user_password" {
  description = "The password for the default user"
  default     = "changeme"
}

variable "project_id" {
  description = "Project ID"
  default     = "rancher-support-01"
}

variable "db_instance_access_cidr" {
  description = "The IPv4 CIDR to provide access the database instance"
  default     = "0.0.0.0/0"
}
