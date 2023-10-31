output "public-ip-add" {
    value = aws_instance.example.public_ip
    
}
output "ami_name" {
    value = aws_instance.example.ami
    
}
