provider "aws" {
    profile = "default"
    region = "us-west-2"
}

resource "aws_s3_bucket" "tf_course" {
    bucket = "tf-course-kg-2022-03-11"
}

resource "aws_s3_bucket_acl" "tf_course" {
    bucket = aws_s3_bucket.tf_course.id
      acl = "private"
}
