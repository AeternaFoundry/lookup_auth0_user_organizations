output "user_organizations_lookup_id" {
  description = "Map of id values across all user_organizations_lookup, keyed the same as var.user_organizations_lookup except keys with no id are omitted"
  value       = { for k, v in data.auth0_user_organizations.user_organizations_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "user_organizations_lookup_organizations" {
  description = "Map of organizations values across all user_organizations_lookup, keyed the same as var.user_organizations_lookup except keys with no organizations are omitted"
  value       = { for k, v in data.auth0_user_organizations.user_organizations_lookup : k => v.organizations if v.organizations != null && length(v.organizations) > 0 }
}
output "user_organizations_lookup_user_id" {
  description = "Map of user_id values across all user_organizations_lookup, keyed the same as var.user_organizations_lookup except keys with no user_id are omitted"
  value       = { for k, v in data.auth0_user_organizations.user_organizations_lookup : k => v.user_id if v.user_id != null && length(v.user_id) > 0 }
}

