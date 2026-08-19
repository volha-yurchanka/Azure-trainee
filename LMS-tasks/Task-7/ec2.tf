data "aws_ami" "ubuntu" {
  owners      = ["099720109477"]
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-*"]
  }
}

resource "aws_security_group" "ec2_sg" {
  name        = "ec2-icmp-sg"
  description = "Allow ICMP ping from anywhere"
  vpc_id      = module.vpc.vpc_id

  ingress {
    description = "Allow ICMP (Ping)"
    from_port   = -1
    to_port     = -1
    protocol    = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "ec2-icmp-sg"
  }
}

resource "aws_instance" "ping_test" {
  ami                         = data.aws_ami.ubuntu.id
  instance_type               = "t3.micro"
  subnet_id                   = module.vpc.public_subnets[0]
  vpc_security_group_ids      = [aws_security_group.ec2_sg.id]
  associate_public_ip_address = true

  tags = {
    Name = "trainee-vpc-test-ec2"
  }
}

output "ec2_public_ip" {
  value       = aws_instance.ping_test.public_ip
  description = "Public IP address of the EC2 instance"
}