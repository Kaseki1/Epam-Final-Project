variable "region" {
  type    = string
  default = "ap-northeast-1a"
}

variable "jenkins" {
  type = map
  default = {
    ami  = "ami-054b47697f2c68996"
    name = "jenkins-server"
  }
}

variable "production" {
  type = map
  default = {
    ami  = "ami-054b47697f2c68996"
    name = "production-server"
  }
}

variable "stage" {
  type = map
  default = {
    ami  = "ami-054b47697f2c68996"
    name = "stage-server"
  }
}

variable "inst_type" {
  type    = string
  default = "t2.micro"
}

variable "subnet_info" {
  type    = string
  default = "final-project-subnet"
}