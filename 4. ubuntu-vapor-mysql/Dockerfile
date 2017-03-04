FROM ubuntu:16.04


# Set environment variables for image
ENV SWIFT_SNAPSHOT swift-3.0.2-RELEASE
ENV SWIFT_SNAPSHOT_LOWERCASE swift-3.0.2-release
ENV UBUNTU_VERSION ubuntu16.04
ENV UBUNTU_VERSION_NO_DOTS ubuntu1604
ENV HOME /root
ENV WORK_DIR /root
ENV RUN true



# Set WORKDIR
WORKDIR ${WORK_DIR}



# Linux OS utils and libraries
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
	clang \
	binutils \
	git \
	libicu-dev \
	wget \
	libxml2 \
	libcurl3 \
	curl \
	libmysqlclient20 \
	libmysqlclient-dev \
	mysql-server && \
  rm -r /var/lib/apt/lists/*



RUN wget https://swift.org/builds/$SWIFT_SNAPSHOT_LOWERCASE/$UBUNTU_VERSION_NO_DOTS/$SWIFT_SNAPSHOT/$SWIFT_SNAPSHOT-$UBUNTU_VERSION.tar.gz \
  && tar xzvf $SWIFT_SNAPSHOT-$UBUNTU_VERSION.tar.gz \
  && rm $SWIFT_SNAPSHOT-$UBUNTU_VERSION.tar.gz
ENV PATH $WORK_DIR/$SWIFT_SNAPSHOT-$UBUNTU_VERSION/usr/bin:$PATH
RUN swiftc -h



RUN curl -sL toolbox.vapor.sh | bash



WORKDIR /vapor



EXPOSE 8080



COPY config.sh /usr/local/bin/config.sh
RUN chmod 777 /usr/local/bin/config.sh
CMD /usr/local/bin/config.sh $RUN
