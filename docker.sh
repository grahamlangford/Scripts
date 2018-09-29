echo remove old versions
sudo apt-get remove docker docker-engine docker.io

echo update apt
sudo apt-get update

echo install packages to allow apt to use a repository over https
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

echo add official docker gpg key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

echo set up the stable repository
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

echo installing docker ce
echo update apt
sudo apt-get update

echo install latest version of docker ce
sudo apt-get install -y docker-ce

echo create docker group
sudo groupadd docker

echo add user to docker group
sudo usermod -aG docker $USER

echo configure docker to start on boot
sudo systemctl enable docker

echo download latest version of docker compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

echo apply executable permissions to the binary
sudo chmod +x /usr/local/bin/docker-compose

echo download and extract docker machine binary
base=https://github.com/docker/machine/releases/download/v0.14.0 &&
  curl -L $base/docker-machine-$(uname -s)-$(uname -m) >/tmp/docker-machine &&
  sudo install /tmp/docker-machine /usr/local/bin/docker-machine
  