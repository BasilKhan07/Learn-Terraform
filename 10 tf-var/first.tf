variable "username" {
    type = string
}

variable "age" {
    type = number
}


output "printname" {
  value = "Hello, ${var.username}, your age is ${var.age}"
}