resource "aws_instance" "jenkins-server" {
  instance_type     = var.inst_type
  ami               = var.jenkins.ami
  availability_zone = "ap-northeast-1a"
  key_name = "final-project-rsa"
  network_interface {
    network_interface_id = aws_network_interface.jenkins-if.id
    device_index = 0
  }

  tags = {
    Name = var.jenkins.name
  }
}

resource "aws_instance" "production-server" {
  instance_type     = var.inst_type
  ami               = var.production.ami
  availability_zone = "ap-northeast-1a"
  key_name = "final-project-rsa"
  network_interface {
    network_interface_id = aws_network_interface.production-if.id
    device_index = 0
  }

  tags = {
    Name = var.production.name
  }
}

resource "aws_instance" "stage-server" {
  instance_type     = var.inst_type
  ami               = var.stage.ami
  availability_zone = "ap-northeast-1a"
  key_name          = "final-project-rsa"
  network_interface {
    network_interface_id = aws_network_interface.stage-if.id
    device_index         = 0
  }

  tags = {
    Name = var.stage.name
  }
}
