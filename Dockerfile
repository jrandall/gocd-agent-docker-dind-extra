ARG GOCD_VERSION=v18.9.0
ARG UID=1000
ARG GID=1000
FROM jrandall/gocd-agent-docker-dind:${GOCD_VERSION}_${UID}_${GID}

RUN apk add gnupg perl
