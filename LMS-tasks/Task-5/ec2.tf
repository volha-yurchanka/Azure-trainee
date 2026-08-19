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
  for_each               = var.instance_configs
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = each.value
  key_name               = aws_key_pair.generated_key.key_name
  vpc_security_group_ids = [aws_security_group.sg.id]
  user_data              = file("${path.module}/user-data.sh")

  tags = {
    Name = "${local.name_prefix}-${each.key}-ec2"
  }
  lifecycle {
    ignore_changes = [user_data]
  }
}