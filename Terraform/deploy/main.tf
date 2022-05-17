module "deploy_" {
    source = "../infraestructure"
    aws_region = "us-east-1"
    instance_type = "t2.small"
    ec2_tags = { Name = "group7-ec2"}

}