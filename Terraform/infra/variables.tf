#######################################################
# config variables
#######################################################

variable "aws_region" {
  type        = string
  description = "AWS default region (where to deploy your resources)"
}

#######################################################
# EC2 variables
#######################################################

variable "instance_type" {
  type        = string
  description = "EC2 instance type"
}

variable "ec2_tags" {
  description = "EC2 resource tags"
  type        = map(string)
}

variable "ami_id" {
  type        = string
  description = "EC2 AMI ID"
}

variable "subnet_id" {
  type        = string
  description = "Subnet to deploy your resources"
}

variable "public_ip" {
  type        = bool
  description = "Do you need public ip (true->yes,false->no)"
}

variable "key_pair_name" {
  type        = string
  description = "Key pair name"
}

variable "user_data" {
  type        = string
  description = "user data path"
}

##############################################
# Security group variables
##############################################

variable "sg_name" {
  type        = string
  description = "Security group name E7"
}

variable "sg_description" {
  type        = string
  description = "Security group description"
}

variable "vpc_id" {
  type        = string
  description = "VPC ID"
}

variable "sg_tags" {
  description = "SG resource tags"
  type        = map(string)
}

##############################################
# Elastic IP variables
##############################################

variable "eip_vpc" {
  type        = bool
  description = "Do you need VPC (true->yes, false->no)"
}

variable "eip_tags" {
  description = "Elastic IP tags"
  type        = map(string)
}

##############################################
# Subnet variables
##############################################

variable "subnet_name" {
  type        = string
  description = "Subnet name"
}

variable "subnet_ids" {
  type        = set(string)
  description = "Subnet id"
}

variable "subnet_tags" {
  type        = map(string)
  description = "Subnet tags"
}

##############################################
# RDS variables
##############################################

variable "rds_identifier" {
  type = string
  description = "RDS identifier"
}

variable "rds_instance_class" {
  type = string
  description = "RDS instance class"
} 

variable "rds_allocated_storage" {
  type = string
  description = "RDS storage (GB)"
} 

variable "rds_engine" {
  type = string
  description = "RDS engine"
} 

variable "rds_engine_version" {
  type = string
  description = "RDS database engine version"
} 

variable "rds_username" {
  type = string
  description = "RDS username"
} 

variable "rds_password" {
  type = string
  description = "RDS user password"
} 

variable "rds_skip_final_snapshot" {
  type = bool
  description = "Do you want to avoid the snapshot creation? (true->yes, false->no)"
} 

variable "rds_tags" {
  type = map(string)
  description = "RDS tags"
} 
variable "rds_port" {
  type = number
  description = "Database connection port"
} 

variable "rds_name" {
  type = string
  description = "Database name"
} 

variable "rds_public_access" {
  type        = bool
  description = "Do you want to enable the database from public domains? (true->yes, false->no)"
}