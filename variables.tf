variable "lambda_filename" {
  description = "The filename of the Lambda function code"
  
}

variable "lambda_function_name" {
  description = "The name of the Lambda function"
 
}

variable "role_arn" {
  description = "The ARN of the IAM Role"
  
}

variable "lambda_handler" {
  description = "The Lambda function handler"
  
}

variable "lambda_runtime" {
  description = "The runtime for the Lambda function"
  
}

variable "source_dir" {
  description = "The directory containing Lambda function code"

  
}

variable "output_path" {
  description = "The output path for the Lambda function code archive"
  

}

variable "s3_bucket_arn"  {
    description = "This is the bucket arn value"
     type = string

}

 
variable "owner" {
  type = string
  description = "Owner's email address"
}
 
variable "purpose" {
  type = string
  description = "Purpose of the EC2 instance"
}
 
variable "application_name" {
  type = string
  description = "Name of the application"
}
 
variable "project_name" {
  type = string
  description = "Name of the project"
}
 
variable "client" {
  type = string
  description = "Client name"
}
 
variable "department" {
  type = string
  description = "Department name"
}
 
variable "start_date" {
  type = string
  description = "Start date of the project"
}
 
variable "end_date" {
  type = string
  description = "End date of the project"
}
 