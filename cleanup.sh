echo clean partial packages
sudo apt-get autoclean

echo cleanup apt cache
sudo apt-get clean

echo clean up unused dependencies
sudo apt-get autoremove