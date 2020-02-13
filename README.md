# docker-minetest-server

This container is useful for running a dedicated Minetest game server. As of 
right now the server will be flat land with creative mode turned on and player 
damage is off. I plan on reworking this container to allow for adding mods, 
worlds, etc. 

## Tools
Be sure to install the following on an instance of openSUSE Tumbleweed.
* podman
* buildah

## Build Container
Execute the following command. 

```bash
sudo bash setup.sh
```

## Run
```bash
# Docker
docker run -d -p 26000:26000/udp localhost/minetest-server:latest
```
```bash
# Podman
podman run -d -p 26000P:26000/udp localhost/minetest-server:latest
```