variable "user_handoff_notification_rules" {
  description = <<EOT
Map of user_handoff_notification_rules, attributes below
Required:
    - notify_advance_in_minutes
    - user_id
Optional:
    - handoff_type
    - contact_method (block):
        - id (required)
        - type (required)
EOT

  type = map(object({
    notify_advance_in_minutes = number
    user_id                   = string
    handoff_type              = optional(string)
    contact_method = optional(list(object({
      id   = string
      type = string
    })))
  }))
}

