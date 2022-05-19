# resource "aws_eip_association" "eip_association" {
#   instance_id   = aws_instance.group7-ec2.id
#   allocation_id = aws_eip.eip.id
# }

# resource "aws_eip" "eip" {
#   vpc                  = var.eip_vpc
#   network_border_group = var.aws_region
#   tags                 = var.eip_tags
# }
