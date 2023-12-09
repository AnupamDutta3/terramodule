resource "aws_instance" "TF_instance_1" {
  ami           = "${var.ami}"
  instance_type = "{$var.instance_type}"
  key_name      = "${var.key_name}"
  count = var.number

  tags = {
    Name = "${var.instance_name}"
  }
