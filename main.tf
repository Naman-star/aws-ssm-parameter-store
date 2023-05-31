resource "aws_ssm_parameter" "parameters" {
  count = length(var.parameters)
  name  = var.parameters[count.index].name
  value = "var.parameters[count.index].value
  type = "String"
  key_id = "8ed6ee73-145a-4993-ba10-87a6c6bd693b"
}