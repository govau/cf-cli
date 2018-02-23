FROM alpine:3.3

ENV PACKAGES "unzip curl openssl ca-certificates git ruby ruby-json libc6-compat bash"
ENV CF_CLI_VERSION "6.33.0"
ENV CF_AUTOPILOT_VERSION="0.0.5-venapp"

RUN apk add --update $PACKAGES && rm -rf /var/cache/apk/*

RUN ln -s /lib/ /lib64 # FIXME: Remove for Alpine >= 3.6

RUN set -e; \
    curl -L "https://cli.run.pivotal.io/stable?release=linux64-binary&version=${CF_CLI_VERSION}" | tar -zx -C /usr/local/bin; \
    cf install-plugin https://github.com/govau/autopilot/releases/download/${CF_AUTOPILOT_VERSION}/autopilot-linux -f
