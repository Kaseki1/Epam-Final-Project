resource "aws_vpc" "final-project-vpc" {
  cidr_block           = "10.0.0.0/16"
  instance_tenancy     = "default"
  enable_dns_support   = "true"
  enable_dns_hostnames = "true"

  tags = {
    Name = "final-project-vpc"
  }
}

resource "aws_subnet" "final-project_subnet" {
  vpc_id            = aws_vpc.final-project-vpc.id
  cidr_block        = "10.0.0.0/16"
  availability_zone = "ap-northeast-1a"

  tags = {
    Name = "final-project_subnet"
  }
}

resource "aws_security_group" "final-project-security-group" {
  name        = "final-project-security-group"
  description = "Allow all traffic"
  vpc_id      = aws_vpc.final-project-vpc.id

  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "final-project-security-group"
  }
}

resource "aws_internet_gateway" "final-project-gateway" {
  vpc_id = aws_vpc.final-project-vpc.id

  tags = {
    Name = "final-project-gateway"
  }
}

resource "aws_route_table" "final-project-default-route" {
  vpc_id = aws_vpc.final-project-vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.final-project-gateway.id
  }
  tags = {
    Name = "final-project-default-route"
  }
}

resource "aws_route_table_association" "subnet-association" {
  subnet_id      = aws_subnet.final-project_subnet.id
  route_table_id = aws_route_table.final-project-default-route.id
}

resource "aws_eip" "jenkins-eip" {
  depends_on = [aws_instance.jenkins-server]
  network_interface = aws_network_interface.jenkins-if.id
  vpc = true
}

resource "aws_eip" "production-eip" {
  depends_on = [aws_instance.production-server]
  network_interface = aws_network_interface.production-if.id
  vpc = true
}

resource "aws_eip" "stage-eip" {
  depends_on = [aws_instance.stage-server]
  network_interface = aws_network_interface.stage-if.id
  vpc = true
}
