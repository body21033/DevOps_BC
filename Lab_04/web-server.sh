 #!/bin/bash
    sudo su
    sudo mkdir -p /var/www/html/
    sudo echo "<h1>This WEB-page was written with Terraform by Bogdan Chumachenko<h1>" > /var/www/html/index.html
    sudo apt update -y
    sudo apt install -y apache2
    sudo service apache2 start
    sudo apt install mariadb-server
    sudo apt install php libapache2-mod-php php-mysql
    sudo service apache2 restart
