sudo apt update 
sudo apt install unzip -y
sudo apt install curl -y 

#Python3 
sudo apt install python3 -y
sudo apt install python3-pip -y
sudo apt install pipx -y
python3 -m pipx ensurepath

#Java
sudo apt install openjdk-17-jre-headless -y

#Docker
sudo apt update -y
sudo apt  install docker.io -y
sudo systemctl start docker
sudo systemctl enable docker
sudo chmod 666 /var/run/docker.sock

#awscli
sudo apt update 
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

#Terraform
wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install terraform -y

#Ansible
pipx install --include-deps ansible
pipx install ansible-core
