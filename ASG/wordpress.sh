#!/bin/bash
set -xe
sudo yum install httpd php php-mysql*  wget  -y
sudo systemctl restart httpd
sudo systemctl enable httpd
sudo wget  https://wordpress.org/wordpress-5.5.1.tar.gz
sudo tar -xf wordpress-5.5.1.tar.gz -C /var/www/html/
sudo mv /var/www/html/wordpress/* /var/www/html/
sudo systemctl restart httpd
sudo chown -R apache:apache /var/www/html/
echo "export WORDPRESS_DB_HOST=wordpressdb.liveaws.com" | sudo tee /etc/profile.d/wordpress.sh
echo "export WORDPRESS_DB_NAME=wordpress" | sudo tee -a /etc/profile.d/wordpress.sh
echo "export WORDPRESS_DB_USER=foo" | sudo tee -a /etc/profile.d/wordpress.sh
echo "export WORDPRESS_DB_PASSWORD=foobarbaz" | sudo tee -a /etc/profile.d/wordpress.sh
sudo systemctl restart httpd