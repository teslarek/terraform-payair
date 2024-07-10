output "api_url" {
  value = "${aws_api_gateway_deployment.hello_world.invoke_url}/hello"
}

output "stage_name" {
  value = var.stage_name
}

