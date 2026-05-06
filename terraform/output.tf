output "artifact_registry_repo" {
  description = "Artifact Registry repository URL"
  value       = module.artifact_registry.repository_url
}
output "application_url" {
  value = module.cloud_run.service_url
}