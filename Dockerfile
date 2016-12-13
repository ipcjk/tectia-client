from centos:latest
MAINTAINER Joerg Kost <joerg.kost@gmx.com>
ADD tectia-client-6.4.13.36-linux-x86_64-comm.tar /tectia
RUN rpm -ivh /tectia/tectia-client-6.4.13.36-linux-x86_64-comm/*.rpm
RUN mkdir -p /etc/ssh2/licenses
RUN cp /tectia/tectia-client-6.4.13.36-linux-x86_64-comm/stc64.dat /etc/ssh2/licenses
RUN useradd -ms /bin/bash sshclient
USER sshclient
WORKDIR /home/sshclient
ENTRYPOINT ["sshg3"] 
# SSH, the SSH logo, TECTIA and the TECTIA logo are either trademarks or registered trademarks of SSH Communications Security. This Website may include names and brands of companies and products which are trademarks of their respective owners
