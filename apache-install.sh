#! /bin/bash
sudo yum update -y
sudo yum intall -y httpd
sudo service httpd start
sudo systemctl enable httpd
echo "<h1>Welcome to Terraform -AWS - DevOps Enprentiship! AWS Infra created using Terraform in us-east-2 Region</h1>" > /var/www/html/index.html
sudo yum update -y
sudo yum install -y docker
sudo yum -y install docker
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -a -G docker ec2-user
sudo chkconfig docker on
sudo curl -L https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -a)-0 /usr/local/bin/docker-commpose
sudo chmod +x /usr/local/bin/docker-compose
sudo reboot
