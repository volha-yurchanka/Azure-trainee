terraform {
  backend "s3" {
    bucket         = "trainee-project-volha-yurchanka-tfstate"
    key            = "dev/ec2.tfstate"
    region         = "eu-north-1"
    profile        = "trainee"
    dynamodb_table = "yv-terraform-state-lock"
    encrypt        = true
  }
}