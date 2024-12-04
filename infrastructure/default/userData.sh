#!/bin/bash
sudo systemctl enable amazon-ssm-agent
sudo systemctl start amazon-ssm-agent
yum install -y httpd
echo "<h1>Hello from $(hostname)</h1>" > /var/www/html/index.html
systemctl start httpd
systemctl enable httpd