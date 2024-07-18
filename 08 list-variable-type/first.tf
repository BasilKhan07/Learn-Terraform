variable "users" {
  type = list
}

output "printfirst" {
  value = "First user is ${var.users[0]}"
}