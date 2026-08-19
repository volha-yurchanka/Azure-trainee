data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket  = "trainee-project-volha-yurchanka-tfstate"
    key     = "dev/vpc.tfstate"
    region  = "eu-north-1"
    profile = "trainee"
  }
}