RPI_HOST_IP:="192.168.1.84"
MARIADB_ROOT_PASSWORD:="default"
HA_DB_PASSWORD:="default"

install: replace_variables
	docker-compose up --detach

replace_variables:
	sed "s/mariadbrootpassword/${MARIADB_ROOT_PASSWORD}/g; s/ha_dbdatabasepassword/${HA_DB_PASSWORD}/g; " .env-template > .env
	sed "s/<hostip>/${RPI_HOST_IP}/g; s/ha_dbdatabasepassword/${HA_DB_PASSWORD}/g" hass-config/configuration-template.yaml > hass-config/configuration.yaml
	