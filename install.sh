#/bin/bash
echo "wireshark-common wireshark-common/install-setuid boolean true" | sudo debconf-set-selections
sudo apt update
sudo apt install ettercap-text-only wireshark -y
sudo curl -L https://github.com/faletto/camovers/releases/download/releases/camovers-linux -o /bin/camovers
sudo chmod +x /bin/camovers
sudo curl -L https://github.com/faletto/churchill/releases/download/v1.0.0/churchill-linux -o /bin/churchill
sudo chmod +x /bin/churchill
echo $'[!] Installation completed. Please note down the name of your ethernet interface shown below, you may have more than one:'
ip -o link show | awk -F': ' '{print $2}' | grep en
echo $'[!] If you don\'t see your interface listed, run "ip link show" to see all your interfaces.'
echo $'[!] Please close and reopen the terminal to proceed.'