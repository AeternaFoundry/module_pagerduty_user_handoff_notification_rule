resource "pagerduty_user_handoff_notification_rule" "user_handoff_notification_rules" {
  for_each = var.user_handoff_notification_rules

  notify_advance_in_minutes = each.value.notify_advance_in_minutes
  user_id                   = each.value.user_id
  handoff_type              = each.value.handoff_type

  dynamic "contact_method" {
    for_each = each.value.contact_method != null ? each.value.contact_method : []
    content {
      id   = contact_method.value.id
      type = contact_method.value.type
    }
  }
}

