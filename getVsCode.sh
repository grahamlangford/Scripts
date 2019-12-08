echo updating packages index & installing dependencies
sudo apt update
sudo apt install software-properties-common apt-transport-https wget

echo importing Microsoft GPG key
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -

echo enabling VS Code repo
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"

echo installing latest VS Code
sudo apt update
sudo apt install code
