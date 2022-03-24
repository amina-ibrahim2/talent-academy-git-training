terraform {
  backend "s3" {
    bucket = "talent-academy-amina-ibrahim"
    key    = "sprint1/week2/training-terraform/terraform.tfstates"
  }
}

resource "aws_dynamodb_table" "terraform_lock_tbl" {
  name           = "terraform-lock"
  read_capacity  = 1
  write_capacity = 1
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags           = {
    Name = "terraform-lock"
  }
}