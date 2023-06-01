module "vpc" {

    source = "../../terraform_modules/vpc"
   cidr = "10.0.1.0/16"

}