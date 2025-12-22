resource "aws_dynamodb_table" "pessoas_table" {
  name           = "Pessoas"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "cdDocPessoa"

  attribute {
    name = "cdDocPessoa"
    type = "S"
  }
}