locals {
    name_prefix = "${var.project_name}-${var.env}"
}

data "aws_ami" "ubuntu" {
  owners      = ["099720109477"]
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-*"]
  }
}

resource "aws_instance" "main" {
    ami           = "ami-0aba19e56f3eaec05"
    instance_type = var.instance_type
    tags = {
        Name = "volha.yurchanka"
        Name = "${local.name_prefix}-ec2"
    }
}