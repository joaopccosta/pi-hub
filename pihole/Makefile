install: compose copy_hosts

compose:
	docker-compose up --detach

copy_hosts:
	docker cp ./hosts $(docker container ls | grep pihole | awk '{print $1}' | tail -n 1 ):/etc/hosts
