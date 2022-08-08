su -

apt-get update

apt-get install -y sudo

sudo apt-get install -y apt-transport-https

sudo apt-get install -y ca-certificates

sudo apt-get install -y curl

sudo apt-get install -y software-properties-common

sudo apt-get install -y git

sudo apt-get install -y make

sudo apt-get install -y vim

sudo apt-get install -y systemd


mkdir /home/hyospark/data
mkdir /home/hyospark/data/wordpress
mkdir /home/hyospark/data/mariadb

# docker 패키지 추가
sudo curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
sudo apt-get update
# docker 설치
curl -fsSL https://get.docker.com/ | sudo sh
sudo chmod 666 /var/run/docker.sock

# docker-compose 설치
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# docker 재시작 시 컨테이너 유지
sudo su -c 'printf "{\n\t\"live-restore\": true\n}" > /etc/docker/docker.json'
sudo systemctl restart docker
# host 설정

cp ./srcs/requirements/tools/hosts /etc/hosts
