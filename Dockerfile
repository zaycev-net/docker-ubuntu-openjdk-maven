FROM adoptopenjdk:16.0.1_9-jdk-hotspot-focal
# https://github.com/docker-library/docs/blob/master/adoptopenjdk/README.md

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
		mc zip unzip net-tools curl iputils-ping dnsutils openssh-client mysql-client rsync telnet \
		borgbackup \
		maven; \
	rm -rf /var/lib/apt/lists/*; \
#
	cat /etc/lsb-release; \
    java --version; \
    mvn -v;

CMD ["bash"]
