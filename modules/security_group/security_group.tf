variable name        { }
variable description { }
variable vpc_id      { }
variable cidrs       {
  type = "list"
}

resource "aws_security_group" "22_pxy" {
  name        = "${var.name}"
  description = "${var.description}"
  vpc_id      = "${var.vpc_id}"

  ingress {
      from_port       = 22
      to_port         = 22
      protocol        = "tcp"
      cidr_blocks     = ["${var.cidrs}"]
  }

  egress {
      from_port       = 0
      to_port         = 0
      protocol        = "-1"
      cidr_blocks     = ["0.0.0.0/0"]
  }

  tags {
      "Name" = "${var.name}"
  }
}

output "sg_22_pxy_id" { value = "${aws_security_group.22_pxy.id}"}
