data "http" "0" {
  url = "https://ipv4.icanhazip.com"
}

resource "aws_security_group" "0" {
  name        = "${local.name}"
  description = "${var.description}"
  vpc_id      = "${var.vpc_id}"

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["${compact(concat(list("${local.current_ip}/32"), var.whitelist))}"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = "${var.tags}"
}
