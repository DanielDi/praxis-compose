# Creating Public Security Group
resource "aws_security_group" "group7-sg" {
  name        = var.sg_name
  description = var.sg_description
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 22
    protocol    = "TCP"
    to_port     = 22
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    protocol    = "TCP"
    to_port     = 80
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 4200
    protocol    = "TCP"
    to_port     = 4200
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 5432
    protocol    = "TCP"
    to_port     = 5432
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 8080
    protocol    = "TCP"
    to_port     = 8080
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 8090
    protocol    = "TCP"
    to_port     = 8090
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    protocol    = "-1" # open all out rule
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = var.sg_tags
}
