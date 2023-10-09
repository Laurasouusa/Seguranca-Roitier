#Atualização do Sistema Operacional:
sudo apt-get update
sudo apt-get upgrade

#Firewall com UFW (Uncomplicated Firewall):
sudo apt-get install ufw
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow ssh
sudo ufw enable

#Desative o SSH Root Login:
sudo nano /etc/ssh/sshd_config

#reinicia o serviço SSH:
sudo service ssh restart


# Instalar o Squid Proxy e configurá-lo
sudo apt install -y squid
echo 'http_port 3128' | sudo tee -a /etc/squid/squid.conf
echo 'acl all src all' | sudo tee -a /etc/squid/squid.conf
echo 'http_access allow all' | sudo tee -a /etc/squid/squid.conf

# Reiniciar o serviço Squid
sudo systemctl restart squid

# Reiniciar o firewall 
sudo ufw reload

#Senhas Fortes instalando a biblioteca libpam-pwquality:
sudo apt-get install libpam-pwquality

#Editar o arquivo /etc/security/pwquality.conf e definir políticas de senha como complexidade mínima, comprimento mínimo, etc.

#Fail2ban:
sudo apt-get install fail2ban

#Limita o Acesso ao Sudo:
sudo usermod -aG sudo seu-usuario
