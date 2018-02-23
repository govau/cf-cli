[![Docker Automated build](https://img.shields.io/docker/automated/govau/cf-cli.svg?style=plastic)](https://hub.docker.com/r/govau/cf-cli/)
[![Docker Build Status](https://img.shields.io/docker/build/govau/cf-cli.svg?style=plastic)](https://hub.docker.com/r/govau/cf-cli/)

# Cloud Foundry CLI deployed using docker

Provides a docker image with the cloudfoundry CLI and plugins for deploying to cloud.gov.au.

This repo is automatically built on [docker hub](https://hub.docker.com/r/govau/cf-cli/).

### How to use it?

*Assumes you have docker running*

This image is published on [docker hub](https://hub.docker.com/r/govau/cf-cli/). To use it:

```
docker run -it --rm -v $PWD:/workspace --workdir=/workspace govau/cf-cli cf --version
```

### How to build it locally?

*Assumes you have docker running*

1. Clone this repository:

```
git clone https://github.com/govau/cf-cli.git
```

2. Build the image and tag it cf-cli:

```
docker build --tag cf-cli cf-cli
```

3. Verify the built image:
```
docker run -it --rm --tag cf-cli cf --version
```
