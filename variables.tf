variable "user_organizations_lookup" {
  description = <<EOT
Map of user_organizations_lookup, attributes below
Required:
    - user_id
EOT

  type = map(object({
    user_id = string
  }))
}

