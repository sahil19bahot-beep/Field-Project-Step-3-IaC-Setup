#!/bin/bash
set -eux

dnf update -y
dnf install -y httpd

cat > /var/www/html/index.html <<'HTML'
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>CloudCart - AWS Field Project</title>
  <style>
    body { font-family: Arial, sans-serif; margin: 0; background: #0b1220; color: white; text-align: center; }
    .box { margin: 12vh auto; max-width: 700px; padding: 40px; border: 1px solid #2d6cdf; border-radius: 18px; }
    h1 { font-size: 42px; }
    .badge { display: inline-block; padding: 8px 14px; border-radius: 20px; background: #142b52; }
  </style>
</head>
<body>
  <div class="box">
    <div class="badge">AWS + Terraform</div>
    <h1>CloudCart</h1>
    <p>Scalable E-Commerce Platform on Cloud</p>
    <p>Served by an EC2 instance managed by an Auto Scaling Group.</p>
    <p>Load Balanced • Highly Available • Infrastructure as Code</p>
  </div>
</body>
</html>
HTML

systemctl enable httpd
systemctl start httpd
