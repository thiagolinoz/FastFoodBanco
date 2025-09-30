resource "aws_db_subnet_group" "aurora_subnet_group" {
  name       = "aurora-subnet-group"
  subnet_ids = [data.terraform_remote_state.eks_vpc.outputs.public_subnet_ids[0].id, data.terraform_remote_state.eks_vpc.outputs.public_subnet_ids[1].id, data.terraform_remote_state.eks_vpc.outputs.public_subnet_ids[2].id]
  tags = var.tags
}