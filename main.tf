provider "aws" {
    region = "us-west-1"
    
}

resource "aws_iam_user" "scott" {
    name = "scott"
    
}