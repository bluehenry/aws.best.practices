variable "vpc_id" {
  type = string
  description = "vpc id"
}

variable "private_subnets_1" {
  type = list(string) 
}

variable "private_subnets_2" {
  type = list(string) 
}

variable "private_subnets_3" {
  type = list(string)
}

variable "private_subnets_4" {
  type = list(string)
}

variable "eks_cluster_name" {
  type = string
}

variable "node_ssh_key" {
  type = string
}

variable "security_groups" {
  type = list(string)
}

variable "node_role_arn" {
  type = string
}