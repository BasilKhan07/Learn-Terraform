output "printfirst" {
  value = "${join(",", var.users)}"
}

output "helloworld" {
  value = "${upper(var.users[0])}"
}
