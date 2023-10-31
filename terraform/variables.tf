variable "region" {
  type = string
}

variable "cluster_name" {
  type = string
}

variable "hostober_vpc" {
  type = map(any)
}

variable "private_subnets" {
  type = list(any)
}

variable "public_subnets" {
  type = list(any)
}

variable "eks_node" {
  type = map(any)
}

variable "nodeGroups" {
  type = map(any)
}