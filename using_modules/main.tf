module "vpc" {

    source = "../../terraform_modules/VPC"
   # cidr = "10.0.1.0/16"
   tags = var.tags

}