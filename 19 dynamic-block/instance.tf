# resource "aws_key_pair" "key-tf" {
#   key_name   = "key-tf"
#   public_key = file("${path.module}/id_rsa.pub")
# }

resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"

  dynamic "ingress" {
    for_each = [22, 80, 443, 3306, 27017]
    iterator = port
    content {
      description = "TLS from VPC"
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  #   ingress {
  #     description = "TLS from VPC"
  #     from_port   = 22
  #     to_port     = 22
  #     protocol    = "tcp"
  #     cidr_blocks = ["0.0.0.0/0"]
  #   }

  #   ingress {
  #     description = "TLS from VPC"
  #     from_port   = 80
  #     to_port     = 80
  #     protocol    = "tcp"
  #     cidr_blocks = ["0.0.0.0/0"]
  #   }

  #   ingress {
  #     description = "TLS from VPC"
  #     from_port   = 443
  #     to_port     = 443
  #     protocol    = "tcp"
  #     cidr_blocks = ["0.0.0.0/0"]
  #   }

  #   ingress {
  #     description = "TLS from VPC"
  #     from_port   = 3306
  #     to_port     = 3306
  #     protocol    = "tcp"
  #     cidr_blocks = ["0.0.0.0/0"]
  #   }
}


# resource "aws_instance" "web" {
#   ami           = "ami-0862be96e41dcbf74"
#   instance_type = "t2.micro"
#   key_name = "${aws_key_pair.key-tf.key_name}"
#   tags = {
#     Name = "first-tf-instance"
#   }
# }
