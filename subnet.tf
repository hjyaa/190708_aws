resource "aws_subnet" "public_1a" {
  vpc_id            = "${aws_vpc.user10dev.id}"
  availability_zone = "ap-northeast-1a"
  cidr_block        = "115.0.1.0/24"

}

resource "aws_subnet" "public_1c" {
  vpc_id            = "${aws_vpc.user10dev.id}"
  availability_zone = "ap-northeast-1a"
  cidr_block        = "115.0.3.0/24"

}

resource "aws_subnet" "private_1a" {
  vpc_id            = "${aws_vpc.user10dev.id}"
  availability_zone = "ap-northeast-1a"
  cidr_block        = "115.0.2.0/24"

}
