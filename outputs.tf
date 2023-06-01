output "ec2_public_ip" {
  value = aws_instance.ruufman_node.public_ip
}