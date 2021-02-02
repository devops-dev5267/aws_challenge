resource "aws_security_group" "instance_sg" {
  name   = "managed-security-group"
  vpc_id = aws_vpc.main.id

  ingress {
    protocol    = "tcp"
    from_port   = 22
    to_port     = 22
    cidr_blocks = ["10.100.1.0/24","10.100.2.0/24"]
  }

  egress {
    protocol    = -1
    from_port   = 0 
    to_port     = 0 
    cidr_blocks = ["10.100.1.0/24","10.100.2.0/24"]
  }
}