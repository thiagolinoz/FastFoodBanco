terraform {
  backend "s3" {
    bucket = "postech-fiap-fastfood-backend-banco-fase4-final" #TODO trocar nome do bucket
    key    = "backend/tfstate/terraform.tfstate"
    region = "us-east-1"
  }
}

data "terraform_remote_state" "eks_vpc" {
  backend = "s3"
  config = {
    bucket = "postech-fiap-fastfood-backend-eks-fase4-dynamo" #TODO trocar nome do bucket
    key    = "backend/tfstate/terraform.tfstate"
    region = "us-east-1"
  }
}
