variable "security_group_name" {
    type = string
}

variable "security_group_description" {
  type = string
  default = ""
}

variable "vpc_id" {
  type = string
}

variable "security_group_tags" {
  type = map
  default = {}
}

#optional
variable "ingress" {
  type = map
  default = {
    ingress-1 = {
      from_port = 5432
      to_port = 5432
      protocol = "tcp"
      description = "Allow 5432 port number"
      cidr_block = ["0.0.0.0"]
    },
    ingress-2 = {
      from_port = 80
      to_port = 80
      protocol = "tcp"
      description = "Allow port number from internet"
      cidr_block = ["0.0.0.0"]
    }
  }
}