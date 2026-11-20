resource "aws_s3_bucket" "pucavv-s3-bucket" {
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
