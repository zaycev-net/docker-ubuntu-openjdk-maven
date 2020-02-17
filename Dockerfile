FROM ubuntu:19.10

ENV LANG=ru_RU.utf8
ENV TZ=UTC

RUN set -eux; \
	apt-get update; \
	apt-get install -y --no-install-recommends \
		apt-utils \
		bzip2 \
		unzip \
		xz-utils \
		ca-certificates p11-kit \
		binutils \
		fontconfig libfreetype6 \
		mc zip unzip net-tools iputils-ping openssh-client rsync \
		openjdk-13-jdk maven; \
	    rm -rf /var/lib/apt/lists/*

CMD ["bash"]
