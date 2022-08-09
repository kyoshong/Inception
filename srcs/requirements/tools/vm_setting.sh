apt-get update

apt-get install -y apt-transport-https
apt-get install -y ca-certificates
apt-get install -y curl
apt-get install -y software-properties-common
apt-get install -y git
apt-get install -y make
apt-get install -y vim
apt-get install -y systemd
apt-get install -y docker
apt-get install -y docker.compose

mkdir /home/hyospark/data
mkdir /home/hyospark/data/wordpress
mkdir /home/hyospark/data/mariadb

# docker 재시작 시 컨테이너 유지
su -c 'printf "{\n\t\"live-restore\": true\n}" > /etc/docker/docker.json'
systemctl restart docker
