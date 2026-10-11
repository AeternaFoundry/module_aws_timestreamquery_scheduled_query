output "timestreamquery_scheduled_queries_arn" {
  description = "Map of arn values across all timestreamquery_scheduled_queries, keyed the same as var.timestreamquery_scheduled_queries"
  value       = { for k, v in aws_timestreamquery_scheduled_query.timestreamquery_scheduled_queries : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "timestreamquery_scheduled_queries_creation_time" {
  description = "Map of creation_time values across all timestreamquery_scheduled_queries, keyed the same as var.timestreamquery_scheduled_queries"
  value       = { for k, v in aws_timestreamquery_scheduled_query.timestreamquery_scheduled_queries : k => v.creation_time if v.creation_time != null && length(v.creation_time) > 0 }
}
output "timestreamquery_scheduled_queries_error_report_configuration" {
  description = "Map of error_report_configuration values across all timestreamquery_scheduled_queries, keyed the same as var.timestreamquery_scheduled_queries"
  value       = { for k, v in aws_timestreamquery_scheduled_query.timestreamquery_scheduled_queries : k => v.error_report_configuration if v.error_report_configuration != null && length(v.error_report_configuration) > 0 }
}
output "timestreamquery_scheduled_queries_execution_role_arn" {
  description = "Map of execution_role_arn values across all timestreamquery_scheduled_queries, keyed the same as var.timestreamquery_scheduled_queries"
  value       = { for k, v in aws_timestreamquery_scheduled_query.timestreamquery_scheduled_queries : k => v.execution_role_arn if v.execution_role_arn != null && length(v.execution_role_arn) > 0 }
}
output "timestreamquery_scheduled_queries_kms_key_id" {
  description = "Map of kms_key_id values across all timestreamquery_scheduled_queries, keyed the same as var.timestreamquery_scheduled_queries"
  value       = { for k, v in aws_timestreamquery_scheduled_query.timestreamquery_scheduled_queries : k => v.kms_key_id if v.kms_key_id != null && length(v.kms_key_id) > 0 }
}
output "timestreamquery_scheduled_queries_last_run_summary" {
  description = "Map of last_run_summary values across all timestreamquery_scheduled_queries, keyed the same as var.timestreamquery_scheduled_queries"
  value       = { for k, v in aws_timestreamquery_scheduled_query.timestreamquery_scheduled_queries : k => v.last_run_summary if v.last_run_summary != null && length(v.last_run_summary) > 0 }
}
output "timestreamquery_scheduled_queries_name" {
  description = "Map of name values across all timestreamquery_scheduled_queries, keyed the same as var.timestreamquery_scheduled_queries"
  value       = { for k, v in aws_timestreamquery_scheduled_query.timestreamquery_scheduled_queries : k => v.name if v.name != null && length(v.name) > 0 }
}
output "timestreamquery_scheduled_queries_next_invocation_time" {
  description = "Map of next_invocation_time values across all timestreamquery_scheduled_queries, keyed the same as var.timestreamquery_scheduled_queries"
  value       = { for k, v in aws_timestreamquery_scheduled_query.timestreamquery_scheduled_queries : k => v.next_invocation_time if v.next_invocation_time != null && length(v.next_invocation_time) > 0 }
}
output "timestreamquery_scheduled_queries_notification_configuration" {
  description = "Map of notification_configuration values across all timestreamquery_scheduled_queries, keyed the same as var.timestreamquery_scheduled_queries"
  value       = { for k, v in aws_timestreamquery_scheduled_query.timestreamquery_scheduled_queries : k => v.notification_configuration if v.notification_configuration != null && length(v.notification_configuration) > 0 }
}
output "timestreamquery_scheduled_queries_previous_invocation_time" {
  description = "Map of previous_invocation_time values across all timestreamquery_scheduled_queries, keyed the same as var.timestreamquery_scheduled_queries"
  value       = { for k, v in aws_timestreamquery_scheduled_query.timestreamquery_scheduled_queries : k => v.previous_invocation_time if v.previous_invocation_time != null && length(v.previous_invocation_time) > 0 }
}
output "timestreamquery_scheduled_queries_query_string" {
  description = "Map of query_string values across all timestreamquery_scheduled_queries, keyed the same as var.timestreamquery_scheduled_queries"
  value       = { for k, v in aws_timestreamquery_scheduled_query.timestreamquery_scheduled_queries : k => v.query_string if v.query_string != null && length(v.query_string) > 0 }
}
output "timestreamquery_scheduled_queries_recently_failed_runs" {
  description = "Map of recently_failed_runs values across all timestreamquery_scheduled_queries, keyed the same as var.timestreamquery_scheduled_queries"
  value       = { for k, v in aws_timestreamquery_scheduled_query.timestreamquery_scheduled_queries : k => v.recently_failed_runs if v.recently_failed_runs != null && length(v.recently_failed_runs) > 0 }
}
output "timestreamquery_scheduled_queries_region" {
  description = "Map of region values across all timestreamquery_scheduled_queries, keyed the same as var.timestreamquery_scheduled_queries"
  value       = { for k, v in aws_timestreamquery_scheduled_query.timestreamquery_scheduled_queries : k => v.region if v.region != null && length(v.region) > 0 }
}
output "timestreamquery_scheduled_queries_schedule_configuration" {
  description = "Map of schedule_configuration values across all timestreamquery_scheduled_queries, keyed the same as var.timestreamquery_scheduled_queries"
  value       = { for k, v in aws_timestreamquery_scheduled_query.timestreamquery_scheduled_queries : k => v.schedule_configuration if v.schedule_configuration != null && length(v.schedule_configuration) > 0 }
}
output "timestreamquery_scheduled_queries_state" {
  description = "Map of state values across all timestreamquery_scheduled_queries, keyed the same as var.timestreamquery_scheduled_queries"
  value       = { for k, v in aws_timestreamquery_scheduled_query.timestreamquery_scheduled_queries : k => v.state if v.state != null && length(v.state) > 0 }
}
output "timestreamquery_scheduled_queries_tags" {
  description = "Map of tags values across all timestreamquery_scheduled_queries, keyed the same as var.timestreamquery_scheduled_queries"
  value       = { for k, v in aws_timestreamquery_scheduled_query.timestreamquery_scheduled_queries : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "timestreamquery_scheduled_queries_tags_all" {
  description = "Map of tags_all values across all timestreamquery_scheduled_queries, keyed the same as var.timestreamquery_scheduled_queries"
  value       = { for k, v in aws_timestreamquery_scheduled_query.timestreamquery_scheduled_queries : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "timestreamquery_scheduled_queries_target_configuration" {
  description = "Map of target_configuration values across all timestreamquery_scheduled_queries, keyed the same as var.timestreamquery_scheduled_queries"
  value       = { for k, v in aws_timestreamquery_scheduled_query.timestreamquery_scheduled_queries : k => v.target_configuration if v.target_configuration != null && length(v.target_configuration) > 0 }
}

