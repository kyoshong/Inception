FROM		debian:buster

LABEL		maintainer="hyospark@student.42seoul.kr"

RUN			apt-get update -y; \
			apt-get upgrade -y; \
			apt-get -y install \
			mariadb-server \ 
			dumb-init \
			vim

RUN			sed -i 's/bind-address/#bind-address/g' /etc/mysql/mariadb.conf.d/50-server.cnf

COPY		./conf/wp_db.sql /
COPY		./tools/init.sh /

RUN			chmod 777 /init.sh


ENTRYPOINT	[ "/usr/bin/dumb-init", "--" ]

EXPOSE		3306

CMD			[ "/init.sh" ]


