variable "bucket_name" {
  description = "S3 bucket name"
  type        = string
}

variable "dynamodb_name" {
    description = "DynamoDB table name"
    type        = string
}

variable "region" {
    description = "AWS region"
    type        = string
}
