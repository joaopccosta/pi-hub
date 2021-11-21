HOSTS_FILE:="hosts"
PIHOLE_PASSWORD:="default"

install: create_compose_file replace_password copy_hosts compose 

compose:
	docker-compose up --detach

create_compose_file:
	$(shell [ -f "docker-compose.yml" ] && rm docker-compose.yml)
	$(shell cp docker-compose-template.yml docker-compose.yml)

replace_password:
	sed -i "s/PASS_MACRO/${PIHOLE_PASSWORD}/g" docker-compose.yml

copy_hosts:
	$(eval HOSTS := $(shell [ -f $(HOSTS_FILE) ] && cat hosts || echo ""))
	$(shell [ -f $(HOSTS_FILE) ] && echo "    extra_hosts:" >> docker-compose.yml && for host in ${HOSTS}; do echo "      - $${host}" >> docker-compose.yml; done)
