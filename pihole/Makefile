HOSTS_FILE:="hosts"
PIHOLE_PASSWORD:="default"
ETC_LOCATION:="./etc-pihole/"
DNS_LOCATION:="./etc-dnsmasq.d/"

install: create_compose_file replace_password replace_volumes copy_hosts compose 

compose:
	docker-compose up --detach

create_compose_file:
	$(shell [ -f "docker-compose.yml" ] && rm docker-compose.yml)
	$(shell cp docker-compose-template.yml docker-compose.yml)

replace_password:
	sed -i "s/PASS_MACRO/${PIHOLE_PASSWORD}/g" docker-compose.yml

replace_volumes:
	sed -i "s ETC_MACRO ${ETC_LOCATION}:/etc/pihole/ g; s DNS_MACRO ${DNS_LOCATION}:/etc/dnsmasq.d/ g" docker-compose.yml

copy_hosts:
	$(eval HOSTS := $(shell [ -f $(HOSTS_FILE) ] && cat hosts || echo ""))
	$(shell [ -f $(HOSTS_FILE) ] && echo "    extra_hosts:" >> docker-compose.yml && for host in ${HOSTS}; do echo "      - $${host}" >> docker-compose.yml; done)
