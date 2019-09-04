# Image for building
FROM transcendio/ci-base

# Install docker https://circleci.com/docs/2.0/building-docker-images/
ENV VER "19.03.1"
RUN curl -L -o /tmp/docker-$VER.tgz https://download.docker.com/linux/static/stable/x86_64/docker-$VER.tgz
RUN tar -xz -C /tmp -f /tmp/docker-$VER.tgz
RUN mv /tmp/docker/* /usr/bin
RUN docker --version

# Install docker-compose
RUN pip install docker-compose
