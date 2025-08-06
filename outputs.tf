output "bucket_name" {
    value = module.s3.bucket_name
}

output "dynamodb_table_name" {
    value = module.dynamodb.table_name
}