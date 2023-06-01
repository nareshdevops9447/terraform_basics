resource "aws_instance" "web"{

  # ami =  data.aws_ami.ami_info.image_id #AMI ID will be different every region, this is OS
  ami = "ami-0bef6cc322bfff646"
  instance_type = "t3.micro"
  key_name = aws_key_pair.terraform.key_name
  count=length(var.instances)
  tags = {
    Name = var.instances[count.index]
  }
}

resource "aws_key_pair" "terraform" {
  key_name   = "terraform"
 #this file function will read the terraform.pub and fetch the content
 public_key = file("${path.module}/terraform.pub")
}

resource "aws_instance" "test" {
  ami = "ami-0bef6cc322bfff646"
  instance_type = var.is_test ? "t2.micro" : "t3.micro"
}