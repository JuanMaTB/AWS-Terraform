############ Bucket AWS https://registry.terraform.io/providers/hashicorp/aws/latest/docs ##########
############ Bucket creation ##########
resource "aws_s3_bucket" "lacloudmain" {
  bucket = "lacloudmain"
}
############ Bucket website configuration ##########
resource "aws_s3_bucket_website_configuration" "lacloudmain" {
  bucket = "lacloudmain"

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }
}
resource "aws_s3_bucket_acl" "example_bucket_acl" {
  bucket = "lacloudmain"
  acl    = "public-read"
}

############ uploading files // content_type = "text/html" if your url start a download ##########
resource "aws_s3_object" "object-index" {
  bucket = "lacloudmain"
  key    = "index.html"
  source = "index.html"
  content_type = "text/html"


}
resource "aws_s3_object" "object-error" {
  bucket = "lacloudmain"
  key    = "error.html"
  source = "error.html"
  content_type = "text/html"


}
resource "aws_s3_object" "object-1" {
  bucket = "lacloudmain"
  key    = "fondo1.jpg"
  source = "./images/fondo1.jpg"
  #content_type = "text/html"


}
resource "aws_s3_object" "object-2" {
  bucket = "lacloudmain"
  key    = "error.jpg"
  source = "./images/error.jpg"
  #content_type = "text/html"


}
resource "aws_s3_object" "object-3" {
  bucket = "lacloudmain"
  key    = "restaurante.gif"
  source = "./images/restaurante.gif"
  #content_type = "text/html"


}
############ Creating Policy //// generate your own policy here ->>> https://awspolicygen.s3.amazonaws.com/policygen.html ##########
resource "aws_s3_bucket_policy" "lacloudmain" {
  bucket = "lacloudmain"

  policy = <<POLICY
{
  "Id": "Policy1665173636298",
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "Stmt1665173632549",
      "Action": [
        "s3:GetObject"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::lacloudmain/*",
      "Principal": "*"
    }
  ]
}
POLICY
}


