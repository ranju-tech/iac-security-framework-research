package terraform.security

deny[msg] {
  input.resource_type == "aws_security_group"
  input.ingress[_].cidr_blocks[_] == "0.0.0.0/0"
  msg := "Security Group allows SSH from 0.0.0.0/0"
}
