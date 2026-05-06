variable "project_id" {}
variable "region" {
  default = "us-central1"
}
variable "service_name" {
  default = "devops-app"
}
variable "bucket_name" {
  description = "Existing GCS bucket name"
}
