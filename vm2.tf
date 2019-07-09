resource "aws_security_group" "bastion" {
  name        = "bastion"
  description = "open ssh port for bastion"

  vpc_id = "${aws_vpc.user10dev.id}"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

}
resource "aws_instance" "awsvm_2a" {
  ami               = "${var.amazon_linux}"
  availability_zone = "ap-northeast-1a"
  instance_type     = "t2.large"
  key_name          = "${var.dev_keyname}"

  vpc_security_group_ids = [
    "${aws_security_group.bastion.id}",
    "${aws_default_security_group.dev_default.id}",
  ]

  subnet_id                   = "${aws_subnet.private_1a.id}"
  associate_public_ip_address = true

}

