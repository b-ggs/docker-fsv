FROM bxggs/vnc:xfce4

RUN apt update \
  && apt install -y build-essential git autoconf libtool libgtk2.0-dev libgl1-mesa-dev libgtkgl2.0-dev libglu1-mesa-dev

RUN git clone https://github.com/b-ggs/fsv.git \
  && cd fsv \
  && ./autogen.sh \
  && ./configure \
  && make \
  && make install

CMD ["/usr/local/bin/fsv"]
