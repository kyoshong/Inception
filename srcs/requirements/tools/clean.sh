docker stop i_mariadb i_wordpress i_nginx;
docker rm i_mariadb i_wordpress i_nginx;
docker rmi -f $(docker images -qa);
docker volume rm $(docker volume ls -q);
docker network rm inception 2 > /dev/null;
