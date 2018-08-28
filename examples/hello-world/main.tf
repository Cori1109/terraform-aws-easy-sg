provider "aws" {
  region = "us-west-2"
}

resource "aws_vpc" "0" {
  cidr_block = "10.0.0.0/16"
}

module "easy-sg" {
  source = "../.."

  vpc_id = "${aws_vpc.0.id}"
}
