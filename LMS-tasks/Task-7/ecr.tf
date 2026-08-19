resource "aws_ecr_repository" "main" {
  name                 = "trainee-project-ecr"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name = "trainee-project-ecr"
  }
}