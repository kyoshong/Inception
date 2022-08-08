SRC_DIR = ./srcs
COMPOSE = docker-compose
YML = docker-compose.yml
RUN_COM = $(COMPOSE) -f $(SRC_DIR)/$(YML)

all: up

up:
	$(RUN_COM) up -d 

build:
	$(RUN_COM) build --no-cache 

restart:
	$(RUN_COM) restart

ps:
	$(RUN_COM) ps

down:
	$(RUN_COM) down

down_rmi:
	$(RUN_COM) down --rmi all

clean: down_rmi
	sh $(SRC_DIR)/requirements/tools/clean.sh

vm_setting:
	sh $(SRC_DIR)/requirements/tools/vm_setting.sh
