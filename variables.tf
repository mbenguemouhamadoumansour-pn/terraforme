variable "aws_region" {
  description = "Région AWS"
  type        = string
  default     = "us-west-2"
}

variable "vpc_cidr" {
  description = "CIDR block du VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR block du sous-réseau public"
  type        = string
  default     = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  description = "CIDR block du sous-réseau privé"
  type        = string
  default     = "10.0.2.0/24"
}

variable "ami_id" {
  description = "AMI ID pour les instances (Ubuntu)"
  type        = string
  default     = "ami-0aff18ec83b712f05"
}

variable "instance_type" {
  description = "Type d'instance EC2"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "Nom de la clé SSH"
  type        = string
  default     = "vockey"
}

variable "my_ip" {
  description = "Votre adresse IP pour SSH"
  type        = string
}