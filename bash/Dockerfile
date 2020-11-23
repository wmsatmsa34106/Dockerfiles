#
# NOTE: THIS DOCKERFILE IS GENERATED VIA "apply-templates.sh"
#
# PLEASE DO NOT EDIT IT DIRECTLY.
#

# FROM alpine:3.12
FROM alpine:3.12.1

# https://git.savannah.gnu.org/cgit/bash.git/commit/?h=devel
# ENV _BASH_COMMIT 37f5a0380524f487f7dbf6737ee30e8510967af6
ENV _BASH_COMMIT 37b22abee700eb1b0c5b6926ab32630a429c1183
ENV _BASH_VERSION devel-20201103
# prefixed with "_" since "$BASH..." have meaning in Bash parlance

RUN set -eux; \
	\
	apk add --no-cache --virtual .build-deps \
		bison \
		coreutils \
		dpkg-dev dpkg \
		gcc \
		libc-dev \
		make \
		ncurses-dev \
		tar \
	; \
	\
	wget -O bash.tar.gz "https://git.savannah.gnu.org/cgit/bash.git/snapshot/bash-$_BASH_COMMIT.tar.gz"; \
	\
	mkdir -p /usr/src/bash; \
	tar \
		--extract \
		--file=bash.tar.gz \
		--strip-components=1 \
		--directory=/usr/src/bash \
	; \
	rm bash.tar.gz; \
	\
	if [ -d bash-patches ]; then \
		apk add --no-cache --virtual .patch-deps patch; \
		for p in bash-patches/*; do \
			patch \
				--directory=/usr/src/bash \
				--input="$(readlink -f "$p")" \
				--strip=0 \
			; \
			rm "$p"; \
		done; \
		rmdir bash-patches; \
		apk del --no-network .patch-deps; \
	fi; \
	\
	cd /usr/src/bash; \
	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; \
	./configure \
		--build="$gnuArch" \
		--enable-readline \
		--with-curses \
# musl does not implement brk/sbrk (they simply return -ENOMEM)
#   bash: xmalloc: locale.c:81: cannot allocate 18 bytes (0 bytes allocated)
		--without-bash-malloc \
	|| { \
		cat >&2 config.log; \
		false; \
	}; \
	make -j "$(nproc)"; \
	make install; \
	cd /; \
	rm -r /usr/src/bash; \
	\
# delete a few installed bits for smaller image size
	rm -rf \
		/usr/local/share/doc/bash/*.html \
		/usr/local/share/info \
		/usr/local/share/locale \
		/usr/local/share/man \
	; \
	\
	runDeps="$( \
		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local \
			| tr ',' '\n' \
			| sort -u \
			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' \
	)"; \
	apk add --no-network --virtual .bash-rundeps $runDeps; \
	apk del --no-network .build-deps; \
	\
	[ "$(which bash)" = '/usr/local/bin/bash' ]; \
	bash --version; \
	bash -c 'help' > /dev/null

#COPY docker-entrypoint.sh /usr/local/bin/
#ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["bash"]


# docker build -f %APPDATA%\Docker\Dockerfiles\Dockerfile.bash5lasted -t bash5lasted .
# docker build -f %APPDATA%\Docker\Dockerfiles\Dockerfile.bash5lasted -t bash:5lasted .
# docker build -f %APPDATA%\Docker\Dockerfiles\Dockerfile.bash5lasted -t bash:5.1.0rc3 .
# docker build -f %APPDATA%\Docker\Dockerfiles\Dockerfile.bash5lasted -t tmsa34106/bash:5lasted .
# docker build -f %APPDATA%\Docker\Dockerfiles\Dockerfile.bash5lasted -t tmsa34106/bash:5.1.0rc3 .
# docker images | grep bash5lasted
# docker images bash5lasted -q # docker images | grep bash5lasted | gawk "{print $3}" | CLIP
# docker run -it c2d1a80aa34a bash
# # # exit
# docker ps -l -q 
# docker rm 10b570ab8507
# docker ps -l -a -q


# docker login
# docker push tmsa34106/bash:5.1.0rc3
# docker push tmsa34106/bash:5lasted


# 依存関係の消し方、なんかうまくいかない？
# https://qiita.com/matsuzan/items/d7de91564b1fadec27ca
# https://scribble.washo3.com/docker-cannot-image.html


# https://git.savannah.gnu.org/cgit/bash.git/
# これを使って、最新のコミットハッシュを取得する

# 2020/11/21 15:45:33.66 
# これだと bash5.1rc2 ?
# https://ftp.gnu.org/gnu/bash/
#  https://ftp.gnu.org/gnu/bash/bash-5.1-rc3.tar.gz
# https://github.com/tianon/docker-bash/blob/be3797835c035ee8b4a15ea1140c2eee05c90c7e/5.1-rc/Dockerfile
