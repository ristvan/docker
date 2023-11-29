FROM gcc:13.2.0

COPY ./install-packages.bash /root

WORKDIR /root

RUN chmod 700 "install-packages.bash" && ./install-packages.bash
