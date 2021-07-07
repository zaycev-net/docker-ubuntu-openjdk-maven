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
		borgbackup; \
	rm -rf /var/lib/apt/lists/*; \

    curl https://archive.apache.org/dist/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz | tar -xzf - -C /usr/local/ ; \
    export PATH=/usr/local/apache-maven-3.6.3/bin:$PATH; \
#
    cat /etc/lsb-release; \
    java --version; \
    mvn -v;

ENV PATH=/usr/local/apache-maven-3.6.3/bin:$PATH
CMD ["bash"]
