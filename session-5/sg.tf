resource "aws_security_group" "main" {
  name        = "secureinit"
  description = "This is a sg for my EC2"
}

resource "aws_security_group_rule" "ingress_rule" {
  count             = length(var.ingress_ports)
  type              = "ingress"
  from_port         = element(var.ingress_ports, count.index) # count.index = 0,1,2
  to_port           = element(var.ingress_ports, count.index)
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.main.id

}

resource "aws_security_group_rule" "egress_rule" {
  type              = "ingress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.main.id

}