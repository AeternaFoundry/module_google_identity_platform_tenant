output "identity_platform_tenants_id" {
  description = "Map of id values across all identity_platform_tenants, keyed the same as var.identity_platform_tenants except keys with no id are omitted"
  value       = { for k, v in google_identity_platform_tenant.identity_platform_tenants : k => v.id if v.id != null && length(v.id) > 0 }
}
output "identity_platform_tenants_allow_password_signup" {
  description = "Map of allow_password_signup values across all identity_platform_tenants, keyed the same as var.identity_platform_tenants except keys with no allow_password_signup are omitted"
  value       = { for k, v in google_identity_platform_tenant.identity_platform_tenants : k => v.allow_password_signup if v.allow_password_signup != null }
}
output "identity_platform_tenants_client" {
  description = "Map of client values across all identity_platform_tenants, keyed the same as var.identity_platform_tenants except keys with no client are omitted"
  value       = { for k, v in google_identity_platform_tenant.identity_platform_tenants : k => one(v.client) if v.client != null && length(v.client) > 0 }
}
output "identity_platform_tenants_deletion_policy" {
  description = "Map of deletion_policy values across all identity_platform_tenants, keyed the same as var.identity_platform_tenants except keys with no deletion_policy are omitted"
  value       = { for k, v in google_identity_platform_tenant.identity_platform_tenants : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "identity_platform_tenants_disable_auth" {
  description = "Map of disable_auth values across all identity_platform_tenants, keyed the same as var.identity_platform_tenants except keys with no disable_auth are omitted"
  value       = { for k, v in google_identity_platform_tenant.identity_platform_tenants : k => v.disable_auth if v.disable_auth != null }
}
output "identity_platform_tenants_display_name" {
  description = "Map of display_name values across all identity_platform_tenants, keyed the same as var.identity_platform_tenants except keys with no display_name are omitted"
  value       = { for k, v in google_identity_platform_tenant.identity_platform_tenants : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "identity_platform_tenants_enable_email_link_signin" {
  description = "Map of enable_email_link_signin values across all identity_platform_tenants, keyed the same as var.identity_platform_tenants except keys with no enable_email_link_signin are omitted"
  value       = { for k, v in google_identity_platform_tenant.identity_platform_tenants : k => v.enable_email_link_signin if v.enable_email_link_signin != null }
}
output "identity_platform_tenants_name" {
  description = "Map of name values across all identity_platform_tenants, keyed the same as var.identity_platform_tenants except keys with no name are omitted"
  value       = { for k, v in google_identity_platform_tenant.identity_platform_tenants : k => v.name if v.name != null && length(v.name) > 0 }
}
output "identity_platform_tenants_project" {
  description = "Map of project values across all identity_platform_tenants, keyed the same as var.identity_platform_tenants except keys with no project are omitted"
  value       = { for k, v in google_identity_platform_tenant.identity_platform_tenants : k => v.project if v.project != null && length(v.project) > 0 }
}

