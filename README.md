# Docker My-Mind
My-Mind in Docker for easier deployment

## Usage

There are two ways you can run this container, either with Docker CLI or Docker-Compose. Setting up this container is super simple you just need to be sure to allow container port 80 through to the host, for example `-p 8085:80` with the mappings respectively `<host_port>:<container_port>`. Use any of the preconfigured options below to get the container up and running quickly. After starting the container you should be able to access it from `http://<YOUR_SERVERS_IP>:8085`.

### Docker CLI

Simply run the following command.

```bash
docker run -d \
--name=my-mind \
-p 8085:80 \
--restart unless-stopped \
thealpaka/my-mind
```

### Docker-Compose

Create a file named `docker-compose.yml`, then run `docker-compose pull && docker-compose up -d`.

```yaml
version: '3'
services:
  my-mind:
    image: thealpaka/my-mind
    container_name: my-mind
    ports:
      - 8085:80
    restart: unless-stopped
```

## Credits
All credits to My-Mind goes to Ondras and the other devs at [https://github.com/ondras/my-mind](https://github.com/ondras/my-mind). 
Credits for the docker base image go to the devs over at [Linuxserver.io](https://linuxserver.io).
