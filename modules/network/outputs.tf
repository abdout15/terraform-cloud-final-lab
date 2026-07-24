output "vpc_id" {
  description = "Identifiant du VPC"
  value       = aws_vpc.main.id
}

output "public_subnet_id" {
  description = "Identifiant du subnet public"
  value       = aws_subnet.public.id
}

output "internet_gateway_id" {
  description = "Identifiant de l'Internet Gateway"
  value       = aws_internet_gateway.main.id
}

output "public_route_table_id" {
  description = "Identifiant de la table de routage publique"
  value       = aws_route_table.public.id
}

output "web_security_group_id" {
  description = "Identifiant du Security Group web"
  value       = aws_security_group.web.id
}