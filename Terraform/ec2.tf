resource "aws_instance" "ec2_instance" {
    ami = "ami-005de95e8ff495156" #imagen ubuntu
    instance_type = "t2.small"
    tags = {
        Name = "group7-ec2"
    }

}