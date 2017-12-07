[![Docker Automated build](https://img.shields.io/docker/automated/govau/cf-cli.svg?style=plastic)](https://hub.docker.com/r/govau/cf-cli/)
[![Docker Build Status](https://img.shields.io/docker/build/govau/cf-cli.svg?style=plastic)](https://hub.docker.com/r/govau/cf-cli/)

# Cloud Foundry CLI deployed using docker

Provides a docker image with the cloudfoundry CLI and plugins for deploying to cloud.gov.au.

This repo is automatically built on [docker hub](https://hub.docker.com/r/govau/cf-cli/).

### How to get it?

Pull the image from docker hub:

```
docker pull govau/cf-cli
```

### How to build it locally?

*Assumes you have docker running locally*

1. Clone this repository:

```
git clone https://github.com/govau/cf-cli.git
```

2. Build the image:

```
docker build cf-cli
```
