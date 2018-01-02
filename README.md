# Thumbor [![Docker Pulls](https://img.shields.io/docker/pulls/heycar/thumbor.svg)](https://hub.docker.com/r/heycar/thumbor/) [![Github Tag](https://img.shields.io/github/tag/hey-car/thumbor.svg)](https://github.com/hey-car/thumbor) [![Github Tag](https://img.shields.io/github/license/hey-car/thumbor.svg)](https://github.com/hey-car/thumbor)
> Yet another Thumbor Docker image

## Config

Checkout the config file at `config/thumbor.config`. For more info on the config [click here](https://github.com/thumbor/thumbor/wiki/Configuration).

**Important** - Remember to change the security key variable.

## Showtime

In order to run locally, you can:

```
docker run --rm -it -p 127.0.0.1:7000:7000 -v $(pwd)/config/:/config/ heycar/thumbor:0.1.0
```
