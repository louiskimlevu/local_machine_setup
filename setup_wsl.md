# download new linux distrib via Microsoft Store
# Connect to linux
Open windows terminal
```bash
wsl --set-default Ubuntu-22.04
wsl --distribution Ubuntu-22.04 -u root
````
# add new linux user
```bash
sudo adduser louikim
usermod -aG sudo newuser
```

# set default user
```bash
cat << EOF >> /etc/wsl.conf
[user]
default=louiskim
EOF
```
# restart distro and log again
```bash
wsl --terminate Ubuntu-22.04
wsl --distribution Ubuntu-22.04
```

# synlimks common windows dirs
```bash
cd ~ 
ln -s /mnt/c/Users/lk_le/Coding .
/mnt/c/Users/lk_le/Downloads . 
```

# install stuffs
```bash
sudo apt update
sudo apt install zsh -y
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
```bash
mkdir utils
cd utils
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
sudo git clone https://github.com/ahmetb/kubectx /opt/kubectx
sudo ln -s /opt/kubectx/kubectx /usr/local/bin/kubectx
sudo ln -s /opt/kubectx/kubens /usr/local/bin/kubens
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube

# Configure docker desktop to enable integration with Ubuntu-22.04
```

