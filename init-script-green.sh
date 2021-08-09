#!/bin/bash
sudo yum update -y
sudo yum install httpd -y
sudo systemctl enable httpd
sudo systemctl start httpd
sudo yum install git -y
echo '<!DOCTYPE html>
<html>
<body style="background-color:green;">

<h1>GREEN ENV</h1>
<p>Works!.</p>

</body>
</html> ' | sudo tee /var/www/html/index.html