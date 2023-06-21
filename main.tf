resource "aws_ssm_parameter" "parameters" {
  count = length(var.parameters)
  name  = var.parameters[count.index].name
  value = var.parameters[count.index].value
  type = "String"
  key_id = "8ed6ee73-145a-4993-ba10-87a6c6bd693b"
}

#Passwords are not at all meant to be keep inside the code at all, Here since it is a lab we are doing it to save time.
#one of the scenario that mostly used in real way is, Enter the passwords manually in parameter store by someone for passwords.

resource "aws_ssm_parameter" "passwords" {
  count = length(var.passwords)
  name  = var.passwords[count.index].name
  value = var.passwords[count.index].value
  type = "SecureString"
  key_id = "8ed6ee73-145a-4993-ba10-87a6c6bd693b"
}