output "instance-ip" {
    value = aws_instance.myfirst-ec2.*.public_ip
}