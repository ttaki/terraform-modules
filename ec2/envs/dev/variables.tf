/*
 * variables.tf
 * Common variables to use in various Terraform files (*.tf)
 */

# The AWS region to use for the dev environment's infrastructure
# Currently, Fargate is only available in `us-east-1`.
variable "region" {
  default = "us-east-1"
}

# The AWS profile to use, this would be the same value used in AWS_PROFILE.
variable "aws_profile" {
}

# The environment that is being built
variable "app" {
}

# The environment that is being built
variable "environment" {
}

# Tags for the infrastructure
variable "tags" {
  type = map(string)
}

# The environment that is being built
variable "public_key" {
}

