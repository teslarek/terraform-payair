variable "aws_region" {
  description = "The AWS region to deploy to"
  default     = "eu-west-1"
}

variable "project_name" {
  description = "The name of the project"
  default     = "hello-world-api"
}

variable "stage_name" {
  description = "The name of the API Gateway stage"
  default     = "prod"
}

variable "customer_gateway_ip" {
  description = "The IP address of the customer gateway"
  type        = string
}

variable "vpn_cidr" {
  description = "The CIDR block for the VPN connection"
  default     = "172.16.0.0/16"
}