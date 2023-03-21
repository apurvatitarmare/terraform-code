output "public-ip"  {
        value = aws_instance.test.public_ip
        
}


output "private-ip"  {
        value = aws_instance.test.private_ip

}

