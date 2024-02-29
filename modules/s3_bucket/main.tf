

resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name
    tags = {
    
    "Owner"           = var.owner
    "Purpose"         = var.purpose
    "ApplicationName" = var.application_name
    "ProjectName"     = var.project_name
    "Client"          = var.client
    "Department"      = var.department
    "StartDate"       = var.start_date
    "EndDate"         = var.end_date
  }
}
