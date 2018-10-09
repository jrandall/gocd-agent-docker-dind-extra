ARG GOCD_VERSION=v18.9.0
ARG UID=1000
ARG GID=1000
FROM jrandall/gocd-agent-docker-dind:${GOCD_VERSION}_${UID}_${GID}

RUN \
  apt-get update \
  && apt-get install -y --no-install-recommends \
       apt-utils \
       software-properties-common \
  && apt-get install -y --no-install-recommends \
       git \
       gpg \
       gpg-agent \
  && rm -rf /var/lib/apt/lists/*

