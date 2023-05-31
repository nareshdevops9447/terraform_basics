resource "aws_instance" "web" {
  ami           = "ami-0bef6cc322bfff646"
  instance_type = "t3.micro"

  tags = {
    Name = "terraform"
  }
}