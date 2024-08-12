variable "cidr_block" {
  type        = string
  description = "The CIDR block for the VPC"
}

variable "name" {
  type        = string
  description = "Name tag for the VPC and associated resources"
}

variable "subnet_count" {
  type        = number
  default     = 2
  description = "Number of subnets to create"
}
