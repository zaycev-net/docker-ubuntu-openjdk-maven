FROM ubuntu:19.10

ENV LANG=ru_RU.utf8
ENV TZ=UTC

RUN set -eux; \
	apt-get update; \
	apt-get install -y --no-install-recommends \
		apt-utils \
		language-pack-ru \
		bzip2 \
		unzip \
		xz-utils \
		ca-certificates p11-kit \
		binutils \
		fontconfig libfreetype6 \
		mc zip unzip net-tools curl iputils-ping openssh-client rsync \
		openjdk-13-jdk maven; \
	rm -rf /var/lib/apt/lists/*; \
	update-locale LANG=ru_RU.UTF-8;

CMD ["bash"]
