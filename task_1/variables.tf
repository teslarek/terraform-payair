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

