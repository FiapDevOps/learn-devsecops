provider "aws" {
  region = "us-east-1"  # Região desejada
}

resource "aws_security_group" "web_sg" {
  name        = "web_sg"
  description = "Security group for web servers"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Liberar acesso à internet para a porta 80
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Liberar acesso à internet para a porta 443
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]  # Permitir tráfego de saída para qualquer destino
  }

}