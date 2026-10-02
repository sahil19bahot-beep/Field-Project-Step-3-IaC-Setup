variable "aws_region" {
  description = "AWS region for the project"
  type        = string
  default     = "ap-south-1"
}

variable "project_name" {
  description = "Project name used in resource names"
  type        = string
  default     = "cloudcart"
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "public_subnet_a_cidr" {
  type    = string
  default = "10.0.1.0/24"
}

variable "public_subnet_b_cidr" {
  type    = string
  default = "10.0.2.0/24"
}

variable "private_subnet_a_cidr" {
  type    = string
  default = "10.0.11.0/24"
}

variable "private_subnet_b_cidr" {
  type    = string
  default = "10.0.12.0/24"
}

variable "admin_cidr" {
  description = "Your public IP in CIDR notation for optional SSH access, e.g. 203.0.113.10/32. Keep this restricted."
  type        = string
  default     = "0.0.0.0/32"
}

variable "db_username" {
  type      = string
  default   = "cloudcartadmin"
  sensitive = true
}

variable "db_password" {
  description = "Use a strong temporary password. Do not commit this file or the tfvars file containing it to GitHub."
  type        = string
  sensitive   = true
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "asg_min" {
  type    = number
  default = 2
}

variable "asg_desired" {
  type    = number
  default = 2
}

variable "asg_max" {
  type    = number
  default = 4
}
