output "user_handoff_notification_rules_id" {
  description = "Map of id values across all user_handoff_notification_rules, keyed the same as var.user_handoff_notification_rules except keys with no id are omitted"
  value       = { for k, v in pagerduty_user_handoff_notification_rule.user_handoff_notification_rules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "user_handoff_notification_rules_contact_method" {
  description = "Map of contact_method values across all user_handoff_notification_rules, keyed the same as var.user_handoff_notification_rules except keys with no contact_method are omitted"
  value       = { for k, v in pagerduty_user_handoff_notification_rule.user_handoff_notification_rules : k => v.contact_method if v.contact_method != null && length(v.contact_method) > 0 }
}
output "user_handoff_notification_rules_handoff_type" {
  description = "Map of handoff_type values across all user_handoff_notification_rules, keyed the same as var.user_handoff_notification_rules except keys with no handoff_type are omitted"
  value       = { for k, v in pagerduty_user_handoff_notification_rule.user_handoff_notification_rules : k => v.handoff_type if v.handoff_type != null && length(v.handoff_type) > 0 }
}
output "user_handoff_notification_rules_notify_advance_in_minutes" {
  description = "Map of notify_advance_in_minutes values across all user_handoff_notification_rules, keyed the same as var.user_handoff_notification_rules except keys with no notify_advance_in_minutes are omitted"
  value       = { for k, v in pagerduty_user_handoff_notification_rule.user_handoff_notification_rules : k => v.notify_advance_in_minutes if v.notify_advance_in_minutes != null }
}
output "user_handoff_notification_rules_user_id" {
  description = "Map of user_id values across all user_handoff_notification_rules, keyed the same as var.user_handoff_notification_rules except keys with no user_id are omitted"
  value       = { for k, v in pagerduty_user_handoff_notification_rule.user_handoff_notification_rules : k => v.user_id if v.user_id != null && length(v.user_id) > 0 }
}

