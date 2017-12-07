FROM alpine:3.3

ENV PACKAGES "unzip curl openssl ca-certificates git ruby ruby-json libc6-compat"
ENV CF_CLI_VERSION "6.33.0"

RUN apk add --update $PACKAGES && rm -rf /var/cache/apk/*
RUN ln -s /lib/ /lib64 # FIXME: Remove for Alpine >= 3.6

RUN curl -L "https://cli.run.pivotal.io/stable?release=linux64-binary&version=${CF_CLI_VERSION}" | tar -zx -C /usr/local/bin
