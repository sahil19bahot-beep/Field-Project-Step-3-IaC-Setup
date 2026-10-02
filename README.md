# CloudCart - Step 3 Infrastructure as Code

Field Project: Scalable E-Commerce Platform on Cloud

## IaC Tool
Terraform

## AWS Region
ap-south-1 (Mumbai)

## Current Terraform scope
- VPC
- 2 public application subnets
- 2 private database subnets
- Internet Gateway and route tables
- ALB
- EC2 Launch Template
- Auto Scaling Group (2-4 instances)
- Target-tracking CPU scaling
- RDS MySQL (private)
- S3 bucket for assets
- IAM role for EC2 Systems Manager access
- Security Groups
- CloudWatch CPU alarm

## Important
This starter configuration intentionally does not create Route 53, ACM, or CloudFront yet because those components require a domain/certificate/DNS decisions. WAF can be added after the CDN/ALB path is finalized.

## Workflow
terraform init
terraform fmt
terraform validate
terraform plan
terraform apply

After successful deployment:
terraform output
terraform output -raw load_balancer_url

## Cleanup
terraform destroy

Do not run destroy until you have saved required screenshots and documentation.
