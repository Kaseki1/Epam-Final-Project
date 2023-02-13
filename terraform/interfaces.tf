resource "aws_network_interface" "jenkins-if" {
  subnet_id       = aws_subnet.final-project_subnet.id
  private_ips     = ["10.0.0.101"]
  security_groups = [aws_security_group.final-project-security-group.id]
  tags = {
    Name = "jenkins-network-interface"
  }
}

resource "aws_network_interface" "stage-if" {
  subnet_id       = aws_subnet.final-project_subnet.id
  private_ips     = ["10.0.0.103"]
  security_groups = [aws_security_group.final-project-security-group.id]

  tags = {
    Name = "stage-network-interface"
  }
}

resource "aws_network_interface" "production-if" {
  subnet_id       = aws_subnet.final-project_subnet.id
  private_ips     = ["10.0.0.104"]
  security_groups = [aws_security_group.final-project-security-group.id]

  tags = {
    Name = "production-network-interface"
  }
}
