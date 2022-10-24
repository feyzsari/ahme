output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.windows_server.id
}
output "aws_eip" {
  description = "Elastic IP of the EC2 instance"
  value       = aws_instance.windows_server.public_ip
}
output "start_url" {
  description = "url to start EC2 instance"
  value       = aws_lambda_function_url.to_start_instance_url
}
output "stop_url" {
  description = "url to stop EC2 instance"
  value       = aws_lambda_function_url.to_stop_instance_url
}
