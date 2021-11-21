# pihole

## Usage 

You can install this simply by providing

```bash
  make install PIHOLE_PASSWORD=<your intended password>
```

**If you do not provide a password, then the value will be `default`.**

You can also pass a `hosts`  file optionally, which will be added to the pihole's `/etc/hosts`, so that your network's ip addresses are resolved to friendly names on the pihole admin panel.

The expected default value for the hosts file is `hosts`. You can name it something else if you need so, but then you'll have to provide that name on the makefile command.

```bash
  make install HOSTS_FILE="new_hosts" PIHOLE_PASSWORD="mysuperpassword"
```

## Hosts file

The contents of this file will be injected as `extra_hosts`  in the `docker-compose.yml` so that the correct hostnames are displayed in the pihole admin panel
The syntax should follow a `<hostname>:<ip_address>` pattern, as follow:

```
pi:127.0.0.1
phone:192.168.1.162
nas:192.168.1.167
playstation:192.168.1.55
tv:192.168.1.56
```
