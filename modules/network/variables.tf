variable "project_name" {
  description = "Nom du projet"
  type        = string
}

variable "environment" {
  description = "Nom de l'environnement : dev, test ou prod"
  type        = string

  validation {
    condition     = contains(["dev", "test", "prod"], var.environment)
    error_message = "L'environnement doit être dev, test ou prod."
  }
}

variable "vpc_cidr" {
  description = "Bloc CIDR du VPC"
  type        = string
}

variable "public_subnet_cidr" {
  description = "Bloc CIDR du subnet public"
  type        = string
}