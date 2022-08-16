FROM cpp-with-gtest-base:1.0.0

COPY . /root

WORKDIR /root

RUN chmod 700 "install-packages.bash" && ./install-packages.bash
