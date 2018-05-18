echo Fetching vscode
curl -o code.deb -L http://go.microsoft.com/fwlink/?LinkID=760868

echo installing vscode
sudo dpkg -i code.deb

echo cleaning up
rm code.deb
