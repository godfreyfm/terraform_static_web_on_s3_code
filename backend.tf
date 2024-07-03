terraform {
  backend "s3" {
    bucket = "sbox-remote-backend "
    key = "sbox-remote-backend/tfstate"
    dynamodb_table = "my_lock_table"
    encrypt = true
  }
}