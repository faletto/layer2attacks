#/bin/bash
sudo apt install ettercap-text-only yersinia -y
sudo curl -L https://github.com/faletto/camovers/releases/download/releases/camovers-linux -o /bin/camovers
sudo chmod +x /bin/camovers
echo ! Installed. Please close and reopen the terminal to proceed.