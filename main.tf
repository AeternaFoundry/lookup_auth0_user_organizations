data "auth0_user_organizations" "user_organizations_lookup" {
  for_each = var.user_organizations_lookup

  user_id = each.value.user_id
}

