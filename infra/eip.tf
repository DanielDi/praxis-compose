
resource "aws_eip_association" "eip_assoc" {
  instance_id = aws_instance.group7-ec2.id
  allocation_id = aws_eip.lb.id
}

resource "aws_eip" "lb" {
  instance = aws_instance.group7-ec2.id
  vpc = true
}