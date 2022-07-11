# Para rodar é preciso passar na linha de comando o a variavel "env"
# COMANDO: terraform apply -var="env=dev"


terraform {
  required_version = "0.14.4"

  # Definindo as vesões requeridas para rodar
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.23.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.0.1"
    }
  }
}


provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}