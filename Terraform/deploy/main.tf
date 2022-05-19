
module "deploy_ec2" {
  source        = "../infra"
  aws_region    = "us-east-1"
  instance_type = "t2.small"
  ec2_tags      = { Name = "group7-ec2" }
  ami_id        = "ami-005de95e8ff495156"
  key_pair_name = "team7-key"
  user_data     = file("../infra/user_data.sh")

  subnet_id = "subnet-04e972f3a706c00e8"
  public_ip = true

  sg_name        = "group7-sg"
  sg_description = "Allow http over port 8080, 4200 and ssh over port 22"
  vpc_id         = "vpc-031420f7c99b1a0bd"
  sg_tags        = { Name = "group7-sg" }

  eip_vpc = true
  eip_tags = { Name = "group7_eip" }

  rds_identifier          = "group7-rds"
  rds_instance_class      = "db.t3.micro"
  rds_allocated_storage   = 20
  rds_engine              = "postgres"
  rds_engine_version      = "14.2"
  rds_username            = "postgres"
  rds_password            = "secretteam7"  
  rds_tags                = { Name = "group7-rds" }
  rds_skip_final_snapshot = true
  rds_port                = 5432
  rds_name                = "group7rds"
  rds_public_access       = true

  subnet_name = "group7-subnet_group"
  subnet_tags = { Name = "group7-subnet_group" }
  subnet_ids  = ["subnet-04e972f3a706c00e8", "subnet-0ee2351fb4338f1c7"]

}