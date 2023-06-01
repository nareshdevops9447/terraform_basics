data "aws_ami" "ami_info" {
  executable_users = ["self"]
  most_recent      = true
  owners           = [var.aws_acc[data.aws_region.current.name]]

  #owners = [lookup(var.aws_acc,data.aws_region.current.name)]

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-*-x86_64-gp2"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

data "aws_region" "current" {}

output "current_region" {
  value = data.aws_region.current.name
}

data "aws_vpc" "existing_vpc"{
  id = "vpc-02b04b0f7c9d0d1e9"
}
output "vpc_info" {
  value = data.aws_vpc.existing_vpc
}