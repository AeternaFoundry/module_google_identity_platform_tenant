variable "identity_platform_tenants" {
  description = <<EOT
Map of identity_platform_tenants, attributes below
Required:
    - display_name
Optional:
    - allow_password_signup
    - deletion_policy
    - disable_auth
    - enable_email_link_signin
    - project
    - client (block):
        - permissions (optional, block):
            - disabled_user_deletion (optional)
            - disabled_user_signup (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    display_name             = string
    allow_password_signup    = optional(bool)
    deletion_policy          = optional(string)
    disable_auth             = optional(bool)
    enable_email_link_signin = optional(bool)
    project                  = optional(string)
    client = optional(object({
      permissions = optional(object({
        disabled_user_deletion = optional(bool)
        disabled_user_signup   = optional(bool)
      }))
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

