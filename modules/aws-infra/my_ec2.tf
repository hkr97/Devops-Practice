#EC2 Instance
resource "aws_instance" "my_ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type
  count        = var.instance_count

  tags = {
    Name = "${var.my_env}-Hulash-EC2 "
  }
}