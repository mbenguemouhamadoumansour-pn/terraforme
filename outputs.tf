output "vpc_id" {
  description = "ID du VPC"
  value       = aws_vpc.main.id
}

output "bastion_public_ip" {
  description = "IP publique du bastion"
  value       = aws_instance.bastion.public_ip
}

output "bastion_private_ip" {
  description = "IP privée du bastion"
  value       = aws_instance.bastion.private_ip
}

output "private_instance_ip" {
  description = "IP privée de l'instance privée"
  value       = aws_instance.private.private_ip
}

output "ssh_to_bastion" {
  description = "Commande SSH pour se connecter au bastion"
  value       = "ssh -i vockey.pem ubuntu@${aws_instance.bastion.public_ip}"
}

output "ssh_to_private_via_bastion" {
  description = "Commande SSH pour se connecter à l'instance privée via le bastion"
  value       = "ssh -i vockey.pem -J ubuntu@${aws_instance.bastion.public_ip} ubuntu@${aws_instance.private.private_ip}"
}