FROM ubuntu

RUN apt-get update \
	&& apt-get -y dist-upgrade \
	&& apt-get -y autoremove \
	&& apt-get clean autoclean \
	&& rm -rf /var/lib/apt/lists/{apt,dpkg,cache,log} /tmp/* /var/tmp/*

RUN apt-get install -y wget sudo lsb-release

RUN wget https://raw.githubusercontent.com/PX4/Devguide/master/build_scripts/ubuntu_sim.sh

ENV JAVA_TOOL_OPTIONS=-Dfile.encoding=UTF8

RUN /bin/bash -c "source ubuntu_sim.sh"

WORKDIR "/root/src/Firmware"

RUN make posix
