
resource "aws_lambda_function" "lambda_terraform3" {
  filename      = var.lambda_filename
  function_name = var.lambda_function_name
  role          = var.role_arn
  handler       = var.lambda_handler
  runtime       = var.lambda_runtime
  depends_on    = [aws_iam_role_policy_attachment.attach_role_policy]

  source_code_hash = data.archive_file.zip_py-file.output_base64sha256
}

data "archive_file" "zip_py-file" {
  type        = "zip"
  source_dir  = var.source_dir
  output_path = var.output_path
}

# modules/lambda/main.tf

resource "aws_s3_bucket_notification" "bucket_notification" {
  bucket = "sameekshasbucket"

  lambda_function {
    lambda_function_arn = aws_lambda_function.lambda_terraform3.arn
    events             = ["s3:ObjectCreated:*"]
  }
}


resource "aws_lambda_permission" "s3_trigger" {
  statement_id  = "AllowS3Invocation"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.lambda_terraform3.arn
  principal     = "s3.amazonaws.com"
  source_arn    = var.s3_bucket_arn
}

resource "aws_iam_policy" "lambda_policy" {
  name   = "LambdaPolicyForterraform"
#   path   = "/"
  policy = file("${path.module}/policy.json")
}

resource "aws_iam_role_policy_attachment" "attach_role_policy" {

  # name = "example-attach"
  role       = var.role_arn_name
  policy_arn = aws_iam_policy.lambda_policy.arn
}