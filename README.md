# pi-hub

A repository with a collection of tools and docker containers to use at home.

I am currently running this on a `raspberry pi4 4gb` and thus the base system is meant to be `raspbian/raspberrypi os`.

All that you need to run to provision all tools is to run:

```bash
make all RPI_HOST="192.168.1.22" PIHOLE_PASSWORD="aStr0ngP455w0Rdrr#91@"
```

Each folder has its own internal `Makefile` should you want to install individual software, or customise the values for specific variables.

## PiHole

Based on the [official dockerhub](https://hub.docker.com/r/pihole/pihole/) documentation.
## Homeassistant

Based on this [iot blogpost](https://iotechonline.com/home-assistant-install-with-docker-compose/?cn-reloaded=1).

## Python

Some `python` packages are installed (through `pip`). See the [packages file here](./tools/requirements.txt).
