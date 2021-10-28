FROM        openjdk:16-slim

LABEL       author="TaigoNodes" maintainer="support@taigocraft.ru"

RUN apt-get update -y \
 && apt-get install -y curl ca-certificates openssl git tar sqlite3 fontconfig tzdata iproute2 \
 && useradd -d / -m container
 
USER        container
ENV         USER=container HOME=/

WORKDIR     /

COPY        ./entrypoint.sh /entrypoint.sh

CMD         ["/bin/bash", "/entrypoint.sh"]
