# SABnzbd (with ffprobe)

<p align="center">
  <img src="https://i.imgur.com/ICNf2qT.png" alt="sabnzbd" style="width: 25%;"/>
</p>

<p align="center">
  <a href="https://github.com/engels74/sabnzbd"><img src="https://img.shields.io/docker/v/engels74/sabnzbd?sort=date" alt="GitHub tag (date)"></a>
  <a href="https://github.com/engels74/sabnzbd/blob/master/LICENSE"><img src="https://img.shields.io/badge/License%20(Image)-GPL--3.0-orange" alt="License (Image)"></a>
  <a href="https://hub.docker.com/r/engels74/sabnzbd"><img src="https://img.shields.io/docker/pulls/engels74/sabnzbd.svg" alt="Docker Pulls"></a>
  <a href="https://github.com/engels74/sabnzbd/stargazers"><img src="https://img.shields.io/github/stars/engels74/sabnzbd.svg" alt="GitHub Stars"></a>
</p>

## 📖 Documentation

All the documentation for the "SABnzbd (with ffprobe)" is located here.

For more information about the Docker image itself, you can visit [engels74.net](https://engels74.net/containers/sabnzbd).

## 🐋 Docker Image

### Docker Compose

To get started with sabnzbd using Docker, follow these steps:

1. **Use this Docker Compose example**
    ```yaml
	services:
	  sabnzbd:
	    container_name: sabnzbd
	    image: ghcr.io/engels74/sabnzbd
	    ports:
	      - "8080:8080"
	    environment:
	      - PUID=1000
	      - PGID=1000
	      - UMASK=002
	      - TZ=Etc/UTC
	      - WEBUI_PORTS=8080/tcp,8080/udp
	      - ARGS
	    volumes:
	      - /<host_folder_config>:/config
	      - /<host_folder_data>:/data
    ```

2. **Run the Docker container using `docker compose`:**
    ```sh
    docker compose -f /choose/path/to/docker-compose.sabnzbd.yml up -d
    ```

## 🆘 Support

If you need assistance, you can try asking in the [hotio Discord](https://hotio.dev/discord), but you probably won't receive support for this image specifically.

## 💻 Source Code

- **Project Source Code** (sabnzbd): The source code for the "sabnzbd" project is hosted at [[sabnzbd/sabnzbd](https://github.com/sabnzbd/sabnzbd)].

- **Docker Image Source**: The source files for building the Docker image are hosted at [[engels74/sabnzbd](https://github.com/engels74/sabnzbd)]. If you can't find what you're looking for in the `master` branch, check other branches.

## 🌟 Show your support

You can show your support by:
- Giving us a star on Docker Hub or GitHub
- Making a [donation](https://hotio.dev/donate) to hotio, as he's the genius behind the Docker images

Your support is greatly appreciated!
