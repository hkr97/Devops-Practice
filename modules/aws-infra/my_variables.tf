variable "my_env" {
  type = string
  description = "this is for env"
}

variable "ami_id" {
    type = string
    description = "this is for ami id"
}

variable "instance_type" {
    type = string
    description = "this is for instance type"
}

variable "instance_count" {
    type = number
    description = "this is for instance count"
}