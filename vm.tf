resource "aws_instance" "awsvm_1a" {
  ami               = "${var.amazon_linux}"
  availability_zone = "ap-northeast-1a"
  instance_type     = "t2.micro"
  key_name          = "${var.dev_keyname}"

#  vpc_security_group_ids = [
#    "${aws_security_group.bastion.id}",
#    "${aws_default_security_group.dev_default.id}",
#  ]

  subnet_id                   = "${aws_subnet.public_1a.id}"
  associate_public_ip_address = true

}

