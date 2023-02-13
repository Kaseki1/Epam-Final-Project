#!/bin/python

# open files with IP addresses
jenkins_file = open('jenkins_server_ip', 'r')
production_file = open('production_server_ip', 'r')
stage_file = open('stage_server_ip', 'r')

# read IP addresses
jenkins_ip = jenkins_file.read()
production_ip = production_file.read()
stage_ip = stage_file.read()

# read template
hosts_file = open('hosts.template', 'r')
hosts = open('hosts.ini', 'w')
hosts_template = hosts_file.read()

# insertparameters
hosts_template = hosts_template.replace('JENKINS_IP_ADDR', jenkins_ip)
hosts_template = hosts_template.replace('STAGE_IP_ADDR', stage_ip)
hosts_template = hosts_template.replace('PROD_IP_ADDR', production_ip)

# write hosts.ini
hosts.write(hosts_template)


jenkins_file.close()
production_file.close()
stage_file.close()
hosts_file.close()
hosts.close()

