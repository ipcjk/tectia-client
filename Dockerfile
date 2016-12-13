from centos:latest
ADD tectia-client-6.4.13.36-linux-x86_64-comm.tar /tectia
RUN rpm -ivh /tectia/tectia-client-6.4.13.36-linux-x86_64-comm/*.rpm
RUN mkdir -p /etc/ssh2/licenses
RUN cp /tectia/tectia-client-6.4.13.36-linux-x86_64-comm/stc64.dat /etc/ssh2/licenses
RUN useradd -ms /bin/bash sshclient
USER sshclient
WORKDIR /home/sshclient
ENTRYPOINT ["sshg3"] 
