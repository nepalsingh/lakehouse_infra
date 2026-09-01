output "vpc_id" {
  value = aws_vpc.databricks_vpc.id
}

output "private_subnet_ids" {
  value = [aws_subnet.private_az1.id, aws_subnet.private_az2.id]
}

output "security_group_id" {
  value = aws_security_group.databricks_sg.id
}

output "cross_account_role_arn" {
  value = aws_iam_role.databricks_cross_account_role.arn
}

output "unity_catalog_s3_bucket" {
  value = aws_s3_bucket.unity_catalog.id
}
