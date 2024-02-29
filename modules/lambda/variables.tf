variable "lambda_filename" {
  description = "The filename of the Lambda function code"
  
}

variable "lambda_function_name" {
  description = "The name of the Lambda function"
  
}

variable "role_arn" {
  description = "The ARN of the IAM Role"
  
}

variable "role_arn_name" {
    type = string
  
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
    

}