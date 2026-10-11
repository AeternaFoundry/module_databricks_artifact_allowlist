output "artifact_allowlists_id" {
  description = "Map of id values across all artifact_allowlists, keyed the same as var.artifact_allowlists except keys with no id are omitted"
  value       = { for k, v in databricks_artifact_allowlist.artifact_allowlists : k => v.id if v.id != null && length(v.id) > 0 }
}
output "artifact_allowlists_artifact_matcher" {
  description = "Map of artifact_matcher values across all artifact_allowlists, keyed the same as var.artifact_allowlists except keys with no artifact_matcher are omitted"
  value       = { for k, v in databricks_artifact_allowlist.artifact_allowlists : k => v.artifact_matcher if v.artifact_matcher != null && length(v.artifact_matcher) > 0 }
}
output "artifact_allowlists_artifact_type" {
  description = "Map of artifact_type values across all artifact_allowlists, keyed the same as var.artifact_allowlists except keys with no artifact_type are omitted"
  value       = { for k, v in databricks_artifact_allowlist.artifact_allowlists : k => v.artifact_type if v.artifact_type != null && length(v.artifact_type) > 0 }
}
output "artifact_allowlists_created_at" {
  description = "Map of created_at values across all artifact_allowlists, keyed the same as var.artifact_allowlists except keys with no created_at are omitted"
  value       = { for k, v in databricks_artifact_allowlist.artifact_allowlists : k => v.created_at if v.created_at != null }
}
output "artifact_allowlists_created_by" {
  description = "Map of created_by values across all artifact_allowlists, keyed the same as var.artifact_allowlists except keys with no created_by are omitted"
  value       = { for k, v in databricks_artifact_allowlist.artifact_allowlists : k => v.created_by if v.created_by != null && length(v.created_by) > 0 }
}
output "artifact_allowlists_metastore_id" {
  description = "Map of metastore_id values across all artifact_allowlists, keyed the same as var.artifact_allowlists except keys with no metastore_id are omitted"
  value       = { for k, v in databricks_artifact_allowlist.artifact_allowlists : k => v.metastore_id if v.metastore_id != null && length(v.metastore_id) > 0 }
}
output "artifact_allowlists_provider_config" {
  description = "Map of provider_config values across all artifact_allowlists, keyed the same as var.artifact_allowlists except keys with no provider_config are omitted"
  value       = { for k, v in databricks_artifact_allowlist.artifact_allowlists : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}

