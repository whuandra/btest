resource "aws_s3_bucket" "wino_test_s3_2921" {
bucket = "wino-test-s3-2921-tues"
  }

resource "aws_s3_bucket_policy" "wino_test_s3_pol" {
  bucket = aws_s3_bucket.wino_test_s3_2921.id
  policy = <<POLICY
{
"Version": "2008-10-17",
"Id": "MYBUCKETPOLICY",
"Statement": [
{
"sid": "",
"Effect": "Allow",
"Action": [
"s3:PutObject",
"s3:DeleteObject"
],
"Resource": "arn:aws:s3:::wino-test-s3-2921-tues/*",
"Principal": "*"
}
]
}
POLICY
}


