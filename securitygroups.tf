//This is the security group for the development environment

resource "aws_security_group" "ec2_sg" {
  name        = "From_terraform_allow_SSH_and_HTTP"
  description = "Allow SSH and HTTP Connection"
  vpc_id      = "vpc-0de121ec0ecf8eeb6"

  ingress {
    description = "SSH from VPC"
    from_port   = 22 //ssh always connect on port 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "HTTP from VPC"
    from_port   = 80 //Http always connect from port 80
    to_port     = 80
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
