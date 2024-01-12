provider "aws" {
  region = "us-east-1"
}

locals {
  name_tag = "${var.project_name}-${var.environment}"
}


resource "aws_instance" "instance" {
  ami = "ami-090fa75af13c156b4"
  instance_type = "t2.micro"

  tags = {
    project_name = var.project_name
    environment_name = var.environment
    Name = local.name_tag
  }
}
