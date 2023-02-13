# Epam DevOps Spring 2022 Final Project
***
## Links to additionals repositories with project code itself and jenkins pipeline
<a href="https://github.com/Kaseki1/final-project-pipeline">Pipeline</a><br>
<a href="https://github.com/Kaseki1/crcs">Code of application</a><br>
## CRCS description
### What is crcs?
CRCS (Centralized Remote Control System) is a solution for managing a group of machines using a builtin command line interface or host's shell.
### How it works?
CRCS consists of three main elements: control server, crcs admin and crcs host. It is no need in public IP for remote host or admin. Server manages messages and delivers its to destination.
### What can I do?
You can get remote access to host's shell and send or get files.
### What stack of technologies was used?
CRCS server written in C++. The main feature of the project is it's own communication protocol that allows communication between components of system.
It uses MySQL DBMS for storing data. The server was designed only for GNU/Linux operating systems.
## Final Project description
### Used technologies for automation
<ul>
    <li>Terraform</li>
    <li>Ansible</li>
    <li>Jenkins</li>
    <li>Docker</li>
</ul>

