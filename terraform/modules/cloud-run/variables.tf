

variable "bucket_name" {
  description = "Name of the Cloud Storage bucket used by the Cloud Run service."
  type        = string
}

variable "service_name" {
  description = "Name of the Cloud Run service."
  type        = string
}

variable "region" {
  description = "Region where the Cloud Run service will be deployed."
  type        = string
}

variable "project_id" {
  description = "GCP project ID for the Cloud Run service."
  type        = string
}


variable "image" {
  description = "Container image URI to deploy to Cloud Run"
  type        = string
}

variable "service_account_email" {
  description = "Service account email used by the Cloud Run service."
  type        = string
}
