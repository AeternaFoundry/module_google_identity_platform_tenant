resource "google_identity_platform_tenant" "identity_platform_tenants" {
  for_each = var.identity_platform_tenants

  display_name             = each.value.display_name
  allow_password_signup    = each.value.allow_password_signup
  deletion_policy          = each.value.deletion_policy
  disable_auth             = each.value.disable_auth
  enable_email_link_signin = each.value.enable_email_link_signin
  project                  = each.value.project

  dynamic "client" {
    for_each = each.value.client != null ? [each.value.client] : []
    content {
      dynamic "permissions" {
        for_each = client.value.permissions != null ? [client.value.permissions] : []
        content {
          disabled_user_deletion = permissions.value.disabled_user_deletion
          disabled_user_signup   = permissions.value.disabled_user_signup
        }
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

