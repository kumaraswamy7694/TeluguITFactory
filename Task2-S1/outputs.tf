output "JS"{
    value = aws_instance.JS.public_ip
}

output "privateip"{
    value = aws_instance.JS.private_ip
}

output "security_group_id"{
    value = aws_instance.JS.security_groups
}
