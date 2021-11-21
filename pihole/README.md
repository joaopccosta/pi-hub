# pihole

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

See the provided `hosts`  file for reference.
