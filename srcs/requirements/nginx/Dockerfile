FROM		debian:buster

LABEL		MAINTAINER="hyospark@student.42seoul.kr"

RUN			apt-get update -y; \
			apt-get upgrade -y; \
			apt-get install -y \
			nginx \
			vim \
			openssl \
			dumb-init

RUN			openssl req -x509 -new -newkey rsa:2048 -nodes -days 365 \
			-subj "/C=KR/ST=Seoul/L=Seoul/O=42Seoul/OU=hyospark/CN=hyospark.42.fr" \
			-keyout /etc/ssl/private/inception.key -out /etc/ssl/certs/inception.crt

COPY		./conf/default /etc/nginx/sites-available/

ENTRYPOINT	["/usr/bin/dumb-init", "--"]

EXPOSE		443

CMD			["nginx", "-g", "daemon off;"]
