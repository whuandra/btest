provider "aws" {
    region = "us-west-1"
    
}

resource "aws_iam_user" "scott" {
    count = var.acct == "dev" ?1 :0
    name = "scott"
    
}
