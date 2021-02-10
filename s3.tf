resource "aws_s3_bucket" "wino_test_s3_2921" {
bucket = "wino-test-s3-2921-tues"
  }

resource "aws_s3_bucket_policy" "wino_test_s3_pol" {
  bucket = aws_s3_bucket.wino_test_s3_2921.id
  policy = <<POLICY
{
// "Version": "2012-10-17",
// "Id": "MYBUCKETPOLICY",
"Statement": [
{
"sid": "AddPerm",
"Effect": "Allow",
"Action": [
"s3:ListBucket",
"s3:GetBucketLocation",
"s3:PutObject",
"s3:PutObjectAcl",
"s3:Get*",
"s3:DeleteObject"
],
"Resource": "arn:aws:s3:::wino-test-s3-2921-tues/*",
"Principal": {
"AWS": "arn:aws:iam::590661738553:user/scott"
  }
}
]
}
POLICY
}


