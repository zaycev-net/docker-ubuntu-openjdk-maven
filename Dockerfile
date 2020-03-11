FROM adoptopenjdk:13-jdk-hotspot-bionic
# https://github.com/docker-library/docs/blob/master/adoptopenjdk/README.md

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
		maven; \
	rm -rf /var/lib/apt/lists/*; \
	update-locale LANG=ru_RU.UTF-8;

CMD ["bash"]
