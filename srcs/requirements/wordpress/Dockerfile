FROM		debian:buster

LABEL		maintainer="hyospark@student.42seoul.kr"

RUN			apt-get update -y; \
			apt-get upgrade -y; \
			apt-get install -y \
			mariadb-client \
			php7.3 \
			php-fpm \
			php-cli \
			vim \
			wget \
			dumb-init \
			php-mysql

RUN			mkdir -p /var/www/html

RUN			wget https://wordpress.org/wordpress-5.8.1.tar.gz; \
			tar -xvf wordpress-5.8.1.tar.gz;

RUN			cp -r /wordpress/* /var/www/html/; \
			rm -rf /wordpress /wordpress-5.8.1.tar.gz;

RUN			chown -R www-data:www-data /var/www/html;

COPY		./tools/init.sh /

RUN			chmod 777 /init.sh

RUN			mv /var/www/html/wp-config-sample.php /var/www/html/wp-config.php; \
			echo "listen = 0.0.0.0:9000" >> /etc/php/7.3/fpm/pool.d/www.conf; \
			sed -i "s/;daemonize = yes/daemonize = no/g" /etc/php/7.3/fpm/php-fpm.conf

RUN			mkdir -p /run/php

ENTRYPOINT	["/usr/bin/dumb-init"]

EXPOSE		9000

CMD			[ "/init.sh" ]


