output "ip_address" {
  value = aws_instance.web.public_ip
}

output "ami" {
  value = data.aws_ami.ami_info.image_id
}