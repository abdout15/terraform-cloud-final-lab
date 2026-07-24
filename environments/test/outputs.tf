output "environment" {
  description = "Environnement déployé"
  value       = var.environment
}

output "vpc_id" {
  description = "Identifiant du VPC"
  value       = module.network.vpc_id
}

output "public_subnet_id" {
  description = "Identifiant du subnet public"
  value       = module.network.public_subnet_id
}

output "internet_gateway_id" {
  description = "Identifiant de l'Internet Gateway"
  value       = module.network.internet_gateway_id
}

output "public_route_table_id" {
  description = "Identifiant de la table de routage publique"
  value       = module.network.public_route_table_id
}

output "web_security_group_id" {
  description = "Identifiant du Security Group web"
  value       = module.network.web_security_group_id
}