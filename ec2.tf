data "aws_ami" "Centos-8-DevOps-Practice" {
  most_recent = true

//  filter {
//    name   = "name"
//    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
//  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["872945671818"] # Canonical
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.Centos-8-DevOps-Practice.id
  instance_type = "t3.micro"

  tags = {
    Name = "terraform"
  }
}