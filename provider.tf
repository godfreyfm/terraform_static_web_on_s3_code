provider "aws" {
  region = "us-east-1"
  profile = "****"
  assume_role {
    role_arn = "****"
  }
}
