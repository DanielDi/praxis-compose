resource "aws_db_instance" "rds_db_instance" {
  identifier           = var.rds_identifier
  instance_class       = var.rds_instance_class
  allocated_storage    = var.rds_allocated_storage
  engine               = var.rds_engine
  engine_version       = var.rds_engine_version
  username             = var.rds_username
  password             = var.rds_password
  db_subnet_group_name = aws_db_subnet_group.subnet.name
  skip_final_snapshot  = var.rds_skip_final_snapshot
  tags                 = var.rds_tags
  port                 = var.rds_port
  name                 = var.rds_name
}

resource "aws_db_subnet_group" "subnet" {
  name       = var.db_subnet_name
  subnet_ids = var.db_subnet_ids
  tags       = var.db_subnet_tags
}