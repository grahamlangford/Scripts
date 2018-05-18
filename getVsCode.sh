echo Fetching vscode
curl -o code.deb -L http://go.microsoft.com/fwlink/?LinkID=760868

echo installing vscode
sudo dpkg -i code.deb

echo installing extensions
VSC_EXT_DIR=~/.vscode/extensions
mkdir -p $VSC_EXT_DIR
code --user-data-dir=$VSC_CONF_DIR \
    --extensions-dir=$VSC_EXT_DIR \
    --install-extension=dbaeumer.vscode-eslint \
    --install-extension=esbenp.prettier-vscode \
    --install-extension=jakob101.relativepath

echo cleaning up
rm code.deb