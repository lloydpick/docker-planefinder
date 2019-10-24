FROM shoginn/planefinder:latest

RUN dpkg --add-architecture i386
RUN apt-get update && apt-get install -y libgcc1:i386 libc6

COPY entrypoint.sh /usr/local/bin/docker_entrypoint.sh

ENTRYPOINT ["/usr/local/bin/docker_entrypoint.sh"]
