resource "aws_vpc" "user10dev" {
  cidr_block           = "115.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
  instance_tenancy     = "default"

}
