output "website_logs_s3_bucket" {
  description = "The s3 bucket of the website logs"
  value       = aws_s3_bucket_website_configuration.lacloudmain.website_endpoint
}