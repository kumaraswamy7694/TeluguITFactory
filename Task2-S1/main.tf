provider "aws" {
  region     = "ap-south-1"
}

resource "aws_instance" "JS" {
  ami                    = var.ami_id
  instance_type          = var.instance_type 
  security_groups = [var.security_group_id]
  key_name = var.key_name
  tags = {
    Name = "Jenkinsvm"
  }
  user_data = <<-EOF
        #! /bin/bash
        sudo apt update -y #update the repository
        sudo apt install openjdk-11-jdk -y
        sudo apt install git -y
        wget https://get.jenkins.io/war-stable/2.440.1/jenkins.war
        java -jar jenkins.war
    EOF
}

