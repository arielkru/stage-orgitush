resource "aws_sns_topic" "example1" {
  kms_master_key_id = "value"
  tags              = {
    Environment = "dev"
    Owner       = "apps-team"
  }
}


resource "aws_sns_topic" "example3" {
  kms_master_key_id = "value"
  tags              = {
    Environment = "dev"
    Owner       = "apps-team"
  }
}

resource "aws_s3_bucket" "test1" {
  versioning {
    enabled = true
  }
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "aws:kms"
      }
    }
  }
}

resource "aws_s3_bucket" "test2" {
  versioning {
    enabled = true
  }
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "aws:kms"
      }
    }
  }
}

resource "aws_s3_bucket" "test3" {
}

