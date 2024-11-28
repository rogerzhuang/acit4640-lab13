output "bucket_name" {
  value       = aws_s3_bucket.terraform_state.id
  description = "The name of the S3 bucket"
}

output "dynamodb_table_name" {
  value       = aws_dynamodb_table.terraform_locks.id
  description = "The name of the DynamoDB table"
}

output "backend_config_file" {
  value       = local_file.tf_backend_config.filename
  description = "The path to the generated backend configuration file"
}