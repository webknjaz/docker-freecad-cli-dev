FROM webknjaz/freecad-cli:latest
MAINTAINER Sviatoslav Sydorenko <wk+freecad-cli-py3.7-docker@sydorenko.org.ua>

RUN \
    pack_build="\
                openssh-client " \
    && apt update \
    && apt install -y --no-install-recommends $pack_build \
# Clean
    && apt-get clean \
    && rm /var/lib/apt/lists/* \
          /usr/share/doc/* \
          /usr/share/locale/* \
          /usr/share/man/* \
          /usr/share/info/* -fR    
