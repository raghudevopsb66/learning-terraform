provider "aws" {
  region = "us-east-1"
}

data "aws_ssm_parameter" "foo" {
  name = "mutable.cart.dev.CATALOGUE_HOST"
}

output "out" {
  value = data.aws_ssm_parameter.foo
}
