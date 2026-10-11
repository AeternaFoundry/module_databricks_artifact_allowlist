variable "artifact_allowlists" {
  description = <<EOT
Map of artifact_allowlists, attributes below
Required:
    - artifact_type
    - artifact_matcher (block):
        - artifact (required)
        - match_type (required)
Optional:
    - created_at
    - created_by
    - metastore_id
    - provider_config (block):
        - workspace_id (optional)
EOT

  type = map(object({
    artifact_type = string
    created_at    = optional(number)
    created_by    = optional(string)
    metastore_id  = optional(string)
    artifact_matcher = list(object({
      artifact   = string
      match_type = string
    }))
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.artifact_allowlists : (
        length(v.artifact_matcher) >= 1
      )
    ])
    error_message = "Each artifact_matcher list must contain at least 1 items"
  }
}

