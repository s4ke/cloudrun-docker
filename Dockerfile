FROM docker:25.0.3-dind
RUN apk add --no-cache python3 py3-pip bash
RUN mkdir -p /app
WORKDIR /app
COPY launch.sh /app/launch.sh
RUN chmod +x /app/launch.sh

ENV DOCKER_HOST=unix:///var/run/docker.sock

CMD [ "/app/launch.sh" ]