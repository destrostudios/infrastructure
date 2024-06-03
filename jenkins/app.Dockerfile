FROM jenkins/jenkins:2.460
USER root

# Create a docker group with the correct GID and add the jenkins user to it, so that the host docker socket is usable
ARG GID_DOCKER
RUN groupadd -g $GID_DOCKER docker && gpasswd -a jenkins docker

# Install docker compose (https://docs.docker.com/compose/install/linux/#install-the-plugin-manually)
RUN DOCKER_CONFIG=/usr/local/lib/docker && \
    mkdir -p $DOCKER_CONFIG/cli-plugins && \
    curl -SL https://github.com/docker/compose/releases/download/v2.27.0/docker-compose-linux-x86_64 -o $DOCKER_CONFIG/cli-plugins/docker-compose && \
    chmod +x $DOCKER_CONFIG/cli-plugins/docker-compose

USER jenkins