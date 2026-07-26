#Key Pair
resource "aws_key_pair" "deploy_key" {
  key_name = "terra-key"
  public_key = file("/Users/hulash/Downloads/Study/AWS/terra-key.pub")
}

# Default VPC
resource "aws_default_vpc" "default" {
}

#Security Group
resource "aws_security_group" "sg" {
  name        = "allow_port_22"
  description = "Allow SSH inbound traffic"
  vpc_id      = aws_default_vpc.default.id

  ingress {
    description = "SSH from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
#EC2 Instance
resource "aws_instance" "my_ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = aws_key_pair.deploy_key.key_name
  security_groups = [aws_security_group.sg.name]

  tags = {
    Name = "Hulash-EC2 "
  }
}