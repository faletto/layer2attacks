#/bin/bash
echo "wireshark-common wireshark-common/install-setuid boolean true" | sudo debconf-set-selections
sudo apt update
sudo apt install ettercap-text-only yersinia wireshark -y
sudo curl -L https://github.com/faletto/camovers/releases/download/releases/camovers-linux -o /bin/camovers
sudo chmod +x /bin/camovers
echo ! Installed. Please close and reopen the terminal to proceed.