resource "aws_s3_bucket" "test" {
  
  versioning {
    enabled = true
  }
}
