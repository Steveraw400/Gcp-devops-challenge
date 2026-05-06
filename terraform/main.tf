variable "repo_name" {
  description = "Artifact Registry repository name"
  type        = string
}

module "artifact_registry" {
  source     = "./modules/artifact-registry"
  project_id = var.project_id
  region     = var.region
}

module "iam" {
  source     = "./modules/iam"
  project_id = var.project_id
}


module "cloud_run" {
  source                = "./modules/cloud-run"
  project_id            = var.project_id
  region                = var.region
  service_name          = var.service_name
  image                 = "${var.region}-docker.pkg.dev/${var.project_id}/${var.repo_name}/app:latest"
  service_account_email = module.iam.service_account_email
  bucket_name           = var.bucket_name
}