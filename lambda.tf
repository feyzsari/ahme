resource "aws_lambda_function" "to_start_instance" {
  filename      = "${path.module}/python/start_instances.zip"
  function_name = "lambda_function_to_start_instance"
  role          = aws_iam_role.lambda_role.arn
  handler       = "start_instances.lambda_handler"
  runtime       = "python3.8"
  depends_on    = [aws_iam_role_policy_attachment.attach_iam_policy_to_iam_role]
}

resource "aws_lambda_function" "to_stop_instance" {
  filename      = "${path.module}/python/stop_instances.zip"
  function_name = "lambda_function_to_stop_instance"
  role          = aws_iam_role.lambda_role.arn
  handler       = "stop_instances.lambda_handler"
  runtime       = "python3.8"
  depends_on    = [aws_iam_role_policy_attachment.attach_iam_policy_to_iam_role]
}

resource "aws_lambda_function_url" "to_start_instance_url" {
  function_name      = aws_lambda_function.to_start_instance.function_name
  authorization_type = "NONE"
}

resource "aws_lambda_function_url" "to_stop_instance_url" {
  function_name      = aws_lambda_function.to_stop_instance.function_name
  authorization_type = "NONE"
}
