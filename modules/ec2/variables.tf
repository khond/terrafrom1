variable "ami" {
  type        = string
  description = "The AMI ID to use for the EC2 instance"
}

variable "instance_type" {
  type        = string
  description = "The type of instance to use"
}

variable "subnet_id" {
  type        = string
  description = "The subnet ID where the instance will be deployed"
}

variable "name" {
  type        = string
  description = "Name tag for the instance"
}
