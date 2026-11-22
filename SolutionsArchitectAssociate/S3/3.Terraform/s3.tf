resource "aws_s3_bucket" "pucavv-s3-bucket" {
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_object" "object" {
  bucket = aws_s3_bucket.pucavv-s3-bucket
  key = "pucatest.txt"
  source = "pucatest.txt"

  etag = filemd5("pucatest.xt")   # terraform track changes to pucatest.txt 
}