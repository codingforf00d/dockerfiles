FROM ubuntu:22.04

RUN DEBIAN_FRONTEND=noninteractive && \
    apt update -y && \
    apt upgrade -y && \
    apt install -y curl && \
    apt install -y python3.10 && \
    apt install -y docker.io && \
    apt install -y chromium-browser && \
    apt install -y libnss3-dev libgdk-pixbuf2.0-dev libgtk-3-dev libxss-dev

WORKDIR /app

COPY . .

RUN chmod +x entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]
