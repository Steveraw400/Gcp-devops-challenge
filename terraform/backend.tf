terraform {
  backend "gcs" {
    bucket = "rawson-devops-terraform-state"
    prefix = "devops-app/state"
  }
}
