output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnet_ids" {
  value = [aws_subnet.public_a.id, aws_subnet.public_b.id]
}

output "private_db_subnet_ids" {
  value = [aws_subnet.private_a.id, aws_subnet.private_b.id]
}

output "load_balancer_dns_name" {
  value = aws_lb.app.dns_name
}

output "load_balancer_url" {
  value = "http://${aws_lb.app.dns_name}"
}

output "autoscaling_group_name" {
  value = aws_autoscaling_group.app.name
}

output "s3_bucket_name" {
  value = aws_s3_bucket.assets.bucket
}

output "rds_endpoint" {
  value     = aws_db_instance.mysql.address
  sensitive = true
}
