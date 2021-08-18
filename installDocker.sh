curl -sSL https://get.docker.com | sh
sudo usermod -aG docker pi
sudo apt update
sudo apt -y upgrade
sudo apt -y install libffi-dev libssl-dev
sudo apt -y install python3-dev
sudo apt install -y python3 python3-pip
sudo apt install -y libseccomp2_2.5.1-1_armhf.deb
sudo pip3 install docker-compose
sudo systemctl enable docker
sudo chown -R pi:pi /home/pi 