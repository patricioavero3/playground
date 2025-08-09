resource "aws_instance" "this" {
  ami                    = var.ami
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  key_name               = var.key_name
  associate_public_ip_address = true
  source_dest_check      = false
  vpc_security_group_ids = var.vpc_security_group_ids
  tags = {
    Name = var.name
  }

  user_data = <<-EOF
#!/bin/bash
sudo yum update -y
sudo yum install -y iptables-services
sudo sysctl -w net.ipv4.ip_forward=1
sudo iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
sudo service iptables save
sudo systemctl enable iptables
sudo systemctl start iptables
EOF
}
