resource "aws_dynamodb_table" "my_table" {
  name           = "${var.my_env}-dynamodb-table"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "id"

  attribute {
    name = "id"
    type = "S"
  }

  tags = {
    Name        = "${var.my_env}-DynamoDB Table"
    Environment = "${var.my_env}"
  }
}