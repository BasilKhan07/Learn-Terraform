resource "aws_key_pair" "key-tf" {
  key_name   = "key-tf"
  public_key = file("${path.module}/id_rsa.pub")
}

output "keyname" {
  value = "${aws_key_pair.key-tf.key_name}"
}

# resource "aws_instance" "web" {
#   ami           = "ami-0862be96e41dcbf74"
#   instance_type = "t2.micro"

#   tags = {
#     Name = "first-tf-instance"
#   }
# }