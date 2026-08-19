resource "aws_s3_bucket" "this" {
  bucket_prefix = var.bucket_name_prefix
}

resource "aws_s3_bucket_versioning" "this" {
  bucket = aws_s3_bucket.this.id

  versioning_configuration {
    status = var.enable_versioning ? "Enabled" : "Disabled"
  }
}
