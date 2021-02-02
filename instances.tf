resource "aws_instance" "instance" {
  ami                         = var.ami
  key_name                    = var.key_name
  instance_type               = var.instance_type
  user_data                   = <<-EOF
                                sudo apt-get update
                                sudo apt-get upgrade
                                sudo apt-get install apache2
                                sudo apt-get update
                                sudo apt-get upgrade
                                sudo apt-get install php5-curl
                                EOF
  security_groups             = [aws_security_group.instance_sg.id]
  tags = {
    Name        = "sample server"
    Environment = var.env
  }
  subnet_id                   = aws_subnet.private_subnet.id
  associate_public_ip_address = false
}