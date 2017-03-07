FROM ubuntu

MAINTAINER Rupen Bandyopadhyay <rbandyo@yahoo.com>

RUN apt-get update && apt-get install -y openssh-server

RUN mkdir /var/run/sshd

ONBUILD ADD sshd_config /etc/ssh/sshd_config

CMD /usr/sbin/sshd -D

# ENTRYPOINT /usr/sbin/sshd

USER nobody
WORKDIR /tmp
ENV foobar "Hello World"

EXPOSE 2222
