FROM ubuntu:16.04

ADD config.sh /usr/local/bin/config.sh

RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y mysql-server \
 && rm -rf /var/lib/apt/lists/*


EXPOSE 3306

RUN chmod 777 /usr/local/bin/config.sh
CMD /usr/local/bin/config.sh
