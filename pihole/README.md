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
make install \
HOSTS_FILE="new_hosts" \
PIHOLE_PASSWORD="mysuperpassword" \
ETC_LOCATION="/var/etc-pihole" \
DNS_LOCATION="/var/etc-pihole/dnsmasq.d/"\
;
```

## Volumes

Two volumes can be used:

- `ETC_LOCATION` defines where `/etc/pihole` will be mounted from. (default is `./etc-pihole/`)
- `DNS_LOCATION` defines where `etc/dnsmasq.d/` will be mounted from. (default is `./etc-dnsmasq.d/`)


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

## Youtube ads blocking

You can optionally run the following makefile target to (hopefully) block youtube ads through pihole:
```bash
make setup_youtube_ads_blocking
```

It clones [this repository](https://github.com/kboghdady/youTube_ads_4_pi-hole) locally, running a provided script which attempts to setup a blacklist and append it to the internal ` gravity.db`.

Bear in mind that youtube ad blocking is somewhat finicky, so your results may vary (and hence this makefile target being optional).

