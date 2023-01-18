resource "aws_s3_bucket" "unrestricted" {
  bucket = "examplebuckettftest"
  #zpc-skip-policy: ZS-AWS-00026,ZS-AWS-00025,ZS-AWS-00034,ZS-AWS-00037
  acl    = "public-read-write"
  versioning {
    enabled = true
  }
  logging {
    target_bucket = aws_s3_bucket.log_bucket.id
    target_prefix = "log/"
    }
}
