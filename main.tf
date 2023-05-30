resource "aws_ssm_parameter" "parameter" {
  name  = "test.test1"
//  type  = "String"
  value = "Hello World"
  type = "SecureString"
  key_id = "8ed6ee73-145a-4993-ba10-87a6c6bd693b"
}