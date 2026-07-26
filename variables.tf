variable "ami_id" {
  default = "ami-0b6d9d3d33ba97d99"
  type    = string
}

variable "instance_type" {
  default = "t2.medium"
  type    = string
}

variable "aws_region" {
  default = "us-east-1"
  type    = string
}

variable "bucket_name" {
  default = "my-hulash-bucket-1"
  type    = string
}

variable "dynamodb_table_name" {
  default = "my-dynamodb-table"
  type    = string
}