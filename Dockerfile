FROM ethorbit/srcds-server:latest
USER root
ENV SRCDS_APPID="276060"
ENV SRCDS_RUN_BINARY="svends_run"
RUN export DEBIAN_FRONTEND=noninteractive &&\
    apt-get install -y wget libssl-dev libssl-dev:i386 &&\ 
    cd /root &&\
    wget -qO libssl.deb http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.1_1.1.1f-1ubuntu2_i386.deb &&\
    dpkg -i ./libssl.deb 
USER srcds
