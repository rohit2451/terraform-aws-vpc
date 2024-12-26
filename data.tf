data "aws_availability_zones" "available" {
  state = "available"
}

data "aws-vpc" "default" {
  default = true
}