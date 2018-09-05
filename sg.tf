data "http" "0" {
  url = "https://ipv4.icanhazip.com"
}

resource "aws_security_group" "0" {
  name        = "${local.name}"
  description = "${var.description}"
  vpc_id      = "${var.vpc_id}"

  tags = "${var.tags}"
}

resource "aws_security_group_rule" "egress" {
  type        = "egress"
  from_port   = 0
  to_port     = 0
  protocol    = -1
  cidr_blocks = ["0.0.0.0/0"]

  security_group_id = "${aws_security_group.0.id}"
}

resource "aws_security_group_rule" "ingress_any_port" {
  type        = "ingress"
  from_port   = 0
  to_port     = 0
  protocol    = -1
  cidr_blocks = ["${compact(concat(list("${local.current_ip}/32"), var.whitelist))}"]

  security_group_id = "${aws_security_group.0.id}"
}

resource "aws_security_group_rule" "ingress_world_port_0" {
  type        = "ingress"
  from_port   = "${local.ingress_world_port_0}"
  to_port     = "${local.ingress_world_port_0}"
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]

  security_group_id = "${aws_security_group.0.id}"

  count = "${local.ingress_world_port_0_count}"
}

resource "aws_security_group_rule" "ingress_world_port_1" {
  type        = "ingress"
  from_port   = "${local.ingress_world_port_1}"
  to_port     = "${local.ingress_world_port_1}"
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]

  security_group_id = "${aws_security_group.0.id}"

  count = "${local.ingress_world_port_1_count}"
}

resource "aws_security_group_rule" "ingress_world_port_2" {
  type        = "ingress"
  from_port   = "${local.ingress_world_port_2}"
  to_port     = "${local.ingress_world_port_2}"
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]

  security_group_id = "${aws_security_group.0.id}"

  count = "${local.ingress_world_port_2_count}"
}

resource "aws_security_group_rule" "ingress_world_port_3" {
  type        = "ingress"
  from_port   = "${local.ingress_world_port_3}"
  to_port     = "${local.ingress_world_port_3}"
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]

  security_group_id = "${aws_security_group.0.id}"

  count = "${local.ingress_world_port_3_count}"
}

resource "aws_security_group_rule" "ingress_world_port_4" {
  type        = "ingress"
  from_port   = "${local.ingress_world_port_4}"
  to_port     = "${local.ingress_world_port_4}"
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]

  security_group_id = "${aws_security_group.0.id}"

  count = "${local.ingress_world_port_4_count}"
}

resource "aws_security_group_rule" "ingress_world_port_5" {
  type        = "ingress"
  from_port   = "${local.ingress_world_port_5}"
  to_port     = "${local.ingress_world_port_5}"
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]

  security_group_id = "${aws_security_group.0.id}"

  count = "${local.ingress_world_port_5_count}"
}

resource "aws_security_group_rule" "ingress_world_port_6" {
  type        = "ingress"
  from_port   = "${local.ingress_world_port_6}"
  to_port     = "${local.ingress_world_port_6}"
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]

  security_group_id = "${aws_security_group.0.id}"

  count = "${local.ingress_world_port_6_count}"
}

resource "aws_security_group_rule" "ingress_world_port_7" {
  type        = "ingress"
  from_port   = "${local.ingress_world_port_7}"
  to_port     = "${local.ingress_world_port_7}"
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]

  security_group_id = "${aws_security_group.0.id}"

  count = "${local.ingress_world_port_7_count}"
}

resource "aws_security_group_rule" "ingress_world_port_8" {
  type        = "ingress"
  from_port   = "${local.ingress_world_port_8}"
  to_port     = "${local.ingress_world_port_8}"
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]

  security_group_id = "${aws_security_group.0.id}"

  count = "${local.ingress_world_port_8_count}"
}

resource "aws_security_group_rule" "ingress_world_port_9" {
  type        = "ingress"
  from_port   = "${local.ingress_world_port_9}"
  to_port     = "${local.ingress_world_port_9}"
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]

  security_group_id = "${aws_security_group.0.id}"

  count = "${local.ingress_world_port_9_count}"
}
