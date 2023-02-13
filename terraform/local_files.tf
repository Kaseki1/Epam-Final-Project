resource "local_file" "jenkins_server_ip" {
  content  = aws_eip.jenkins-eip.public_ip
  filename = "../ansible/jenkins_server_ip"
}

resource "local_file" "production_server_ip" {
  content  = aws_eip.production-eip.public_ip
  filename = "../ansible/production_server_ip"
}

resource "local_file" "stage_server_ip" {
  content  = aws_eip.stage-eip.public_ip
  filename = "../ansible/stage_server_ip"
}
