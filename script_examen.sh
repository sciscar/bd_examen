#/bin/bash
apt update
apt install -y git iptables
snap install docker
su alumne
git clone https://github.com/sciscar/examen_bd.git
cd examen_bd
docker-compose up -d
#sh -c 'echo " pre-up iptables -A OUTPUT -p tcp -m owner --uid-owner alumne -j DROP" >> /etc/network/interfaces'
iptables -A OUTPUT -p tcp -m owner --uid-owner alumne -j DROP
