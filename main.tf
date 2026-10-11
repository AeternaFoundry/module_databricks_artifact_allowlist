resource "databricks_artifact_allowlist" "artifact_allowlists" {
  for_each = var.artifact_allowlists

  artifact_type = each.value.artifact_type
  created_at    = each.value.created_at
  created_by    = each.value.created_by
  metastore_id  = each.value.metastore_id

  dynamic "artifact_matcher" {
    for_each = each.value.artifact_matcher
    content {
      artifact   = artifact_matcher.value.artifact
      match_type = artifact_matcher.value.match_type
    }
  }

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }
}

