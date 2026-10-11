output "s3_bucket_abacs_abac_status" {
  description = "Map of abac_status values across all s3_bucket_abacs, keyed the same as var.s3_bucket_abacs"
  value       = { for k, v in aws_s3_bucket_abac.s3_bucket_abacs : k => v.abac_status if v.abac_status != null && length(v.abac_status) > 0 }
}
output "s3_bucket_abacs_bucket" {
  description = "Map of bucket values across all s3_bucket_abacs, keyed the same as var.s3_bucket_abacs"
  value       = { for k, v in aws_s3_bucket_abac.s3_bucket_abacs : k => v.bucket if v.bucket != null && length(v.bucket) > 0 }
}
output "s3_bucket_abacs_expected_bucket_owner" {
  description = "Map of expected_bucket_owner values across all s3_bucket_abacs, keyed the same as var.s3_bucket_abacs"
  value       = { for k, v in aws_s3_bucket_abac.s3_bucket_abacs : k => v.expected_bucket_owner if v.expected_bucket_owner != null && length(v.expected_bucket_owner) > 0 }
}
output "s3_bucket_abacs_region" {
  description = "Map of region values across all s3_bucket_abacs, keyed the same as var.s3_bucket_abacs"
  value       = { for k, v in aws_s3_bucket_abac.s3_bucket_abacs : k => v.region if v.region != null && length(v.region) > 0 }
}

