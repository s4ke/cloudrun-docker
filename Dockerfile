FROM docker:25.0.3-dind
RUN apk add --no-cache python3 py3-pip bash
WORKDIR /app
COPY launch.sh launch.sh
RUN chmod +x launch.sh

ENV DOCKER_HOST=unix:///var/run/docker.sock

CMD [ "launch.sh" ]
