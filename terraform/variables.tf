variable "region" {
  type = string
  description = "region where my resources would be created"
}

variable "cluster_name" {
  type = string
  description = "The name of my eks cluster"
}

variable "hostober_vpc" {
  type = map(any)
  description = "The name of my VPC"
}

variable "private_subnets" {
  type = list(any)
  description = "cidr range for my private subnets"
}

variable "public_subnets" {
  type = list(any)
  description = "cidr range for my public subnets"
}

variable "eks_node" {
  type = map(any)
  description = "name of the eks nodes created"
}

variable "nodeGroups" {
  type = map(any)
  description = "name of the node groups created"
}

variable "TFOrganization" {
  type = string
  description = "name of the terraform cloud organization"
}

variable "workspace" {
  type = string
  description = "name of the terraform cloud workspace"
}