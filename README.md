# Epam DevOps Spring 2022 Final Project
***
<h2>Links to additionals repositories with project code itself and jenkins pipeline</h2>
<a href="https://github.com/Kaseki1/final-project-pipeline">Pipeline</a><br>
<a href="https://github.com/Kaseki1/crcs">Code of application</a><br>
<h2>CRCS description</h2>
<h3>What is crcs?</h3>
CRCS (Centralized Remote Control System) is a solution for managing a group of machines using a builtin command line interface or host's shell.
<h3>How it works?</h3>
CRCS consists of three main elements: control server, crcs admin and crcs host. It is no need in public IP for remote host or admin. Server manages messages and delivers its to destination.
<h3>What can I do?</h3>
You can get remote access to host's shell and send or get files.
<h3>What stack of technologies was used?</h3>
CRCS server written in C++. The main feature of the project is it's own communication protocol that allows communication between components of system.
It uses MySQL DBMS for storing data. The server was designed only for GNU/Linux operating systems.
<h2>Final Project description</h2>
<h3>Used technologies for automation</h3>
<ul>
    <li>Terraform</li>
    <li>Ansible</li>
    <li>Jenkins</li>
    <li>Docker</li>
</ul>
<h3>Stages of implementation</h3>
<ol>
    <li>Terraform creates infrastructure
        <ul>
            <li>Jenkins server</li>
            <li>Staging server</li>
            <li>Production server</li>
            <li>VPC</li>
            <li>Network interfaces</li>
            <li>Elastic IPs</li>
        </ul>
    </li>
    <li>Ansible configures servers
        <ul>
            <li>Jenkins server</li>
            <li>Staging server</li>
            <li>Production server</li>
        </ul>
    </li>
    <li>Jenkins deploys application</li>
</ol>
