# 
# https://hub.docker.com/r/atarumix/gawk5-alpine

#
# https://hub.docker.com/r/atarumix/gawk5-alpine/dockerfile

# OneNote/ idx2020/ gawk
# https://onedrive.live.com/redir?resid=FCDC463B0C5AB310%21322&page=Edit&wd=target%28Index2020.one%7C28e49b0e-a387-4ffc-a71b-0b76144d4adf%2FGawk%7Cc280cb76-e0ae-40bf-a4d9-8ee49b05e028%2F%29&wdorigin=703


docker pull atarumix/gawk5-alpine

docker images atarumix/gawk5-alpine
# REPOSITORY              TAG                 IMAGE ID            CREATED             SIZE
# atarumix/gawk5-alpine   latest              22aefd7ef440        7 months ago        5.19MB


docker run --rm -it atarumix/gawk5-alpine --version 



docker rmi atarumix/gawk5-alpine



docker run -v /:/home/busybox --name common_test_volume --rm -ti busybox:latest awk "{print NF}" /home/busybox/baa
docker run -v /:/home/busybox --name common_test_volume --rm -ti atarumix/gawk5-alpine:latest "{print NF}" /home/busybox/baa
docker run -v /:/home/busybox --name common_test_volume --rm -ti busybox:latest sh
docker run -v /:/home/busybox --name common_test_volume --rm -ti busybox:latest cat /home/busybox/test1.awk
# {print NF}
docker run -v /:/home/busybox --name common_test_volume --rm -ti atarumix/gawk5-alpine:latest -f /home/busybox/test1.awk /home/busybox/baa

# alpine/git
docker images alpine/git
# REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
# alpine/git          latest              94f8849864da        2 months ago        28.4MB
docker run --rm -ti alpine/git --version
# 必要に応じて
docker pull alpine/git:latest
docker images | grep git
# alpine/git                           latest                                           76a4083eacef        9 days ago          28.4MB
# alpine/git                           <none>                                           94f8849864da        2 months ago        28.4MB
# gitbucket/gitbucket                  latest                                           61c2c8c5aa7d        3 months ago        316MB
docker run -v /:/home/git --name common_test_volume --rm -ti alpine/git pull https://github.com/Lycheejam/php-sample.git

docker run -v /:/home/git --name common_test_volume --rm -ti busybox:latest mkdir /home/git/gittest
docker run -v /:/home/git --name common_test_volume --rm -ti alpine/git clone https://github.com/Lycheejam/php-sample.git /home/git/gittest
docker run -v /:/home/git --name common_test_volume --rm -ti busybox:latest sh

/ # cd /home/git/gittest
/ # ls -al


# [Q]WindowsファイルエクスプローラからDockerコンテナフォルダとファイルにアクセスするにはどうすればよいですか? 
# https://www.366service.com/jp/qa/06a63153670442cbc4229b6f25c339ca


# https://savannah.gnu.org/git/?group=gawk
# https://git.savannah.gnu.org/cgit/gawk.git



# このリンクに飛ばされた
# https://docs.docker.com/docker-for-windows/wsl/#develop-with-docker-and-wsl-2

# これで解決？
# https://fukuchiharuki.me/static/pukiwikidump/page/%E9%9A%9C%E5%AE%B3%E3%83%A1%E3%83%A2/Docker%20for%20Windows%E3%81%A7%E3%83%9C%E3%83%AA%E3%83%A5%E3%83%BC%E3%83%A0%E3%83%9E%E3%82%A6%E3%83%B3%E3%83%88%E3%81%A7%E3%81%8D%E3%81%AA%E3%81%84.html

# これはだめ # docker run -v /c/Users/%UserName%/Downloads/WORK01:/ --name common_test_volume --rm -ti busybox:latest
docker run -v //c/Users/%UserName%/Downloads/WORK01:/home/win --name common_test_volume --rm -ti busybox:latest
# できた！



# 
# $ docker run -v //c/Users/%UserName%/Downloads/WORK01:/home/win --name common_test_volume --rm -ti busybox:latest
# / # ls -al /home/win
# total 4
# drwxrwxrwx    1 root     root          4096 Nov 30 04:16 .
# drwxr-xr-x    1 nobody   nobody        4096 Nov 30 04:22 ..
# -rwxrwxrwx    1 root     root             4 Nov 30 04:16 aaaab.txt
# / # cat /home/win/aaaab.txt
# bbbb/ #
# / # exit
# 

# 
# $ docker run -v //c/Users/%UserName%/Downloads/WORK01:/home/win --rm -ti busybox:latest
# / # ls -al /home/win
# total 4
# drwxrwxrwx    1 root     root          4096 Nov 30 04:16 .
# drwxr-xr-x    1 nobody   nobody        4096 Nov 30 04:25 ..
# -rwxrwxrwx    1 root     root             4 Nov 30 04:16 aaaab.txt
# / # exit
#  
# 



# 関数型OS/ NixOS into WSL2
# https://github.com/Elyhaka/NixOS-WSL
# https://the.kalaclista.com/posts/2020/09/13/153628/


# google : lcow wsl2
# google : windows lxd
# google : Linux Container slaide
# https://speakerdeck.com/cyberblack28/what-a-windows-container-looks-like
# https://www.slideshare.net/insideHPC/linux-container-technology-101
# ... こちらより
# https://qiita.com/matarillo/items/ca1eecf8f9a3cd76f9ce

# WSL2/Docker でも入れた、LinuxKitのGitHub
# https://github.com/linuxkit
# https://github.com/linuxkit/linuxkit/tree/master/pkg
# https://hub.docker.com/u/linuxkit
# Windows 10にはコンテナーがいっぱい
# https://ascii.jp/elem/000/004/032/4032590/


# gawk 5.1 のBuildの参考
# https://github.com/atarumix/docker-alpine-gawk5
# https://github.com/atarumix/docker-alpine-gawk5/blob/master/Dockerfile



docker run -v //c/Users/%UserName%/Downloads/WORK01:/home/win -v /:/home/busybox --name common_test_volume --rm -ti busybox:latest
# なにやら、ボリュームマウントで警告が出る・以前に、何ともコワい”マウント”


# 
# $ docker run -v //c/Users/%UserName%/Downloads/WORK01:/home/win -v /:/home/busybox --name common_test_volume --rm -ti busybox:latest     
# / # ls /home/win/*                                                                                                                       
# /home/win/aaaab.txt                                                                                                                      
# / # cat /home/win/aaaab.txt                                                                                                              
# bbbb/ #                                                                                                                                  
# / # exit                                                                                                                                 
# 



docker run -v //c/Users/%UserName%/Downloads/WORK01:/home/win -v /:/home/busybox --name common_test_volume --rm -ti bash:5.1.0rc3 bash

# 
# $ docker images bash
# REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
# bash                3.2.57              2274b58a6fb5        8 days ago          10.7MB
# bash                4.4.23              9810d8a0a19d        8 days ago          13.3MB
# bash                5.1.0rc3            c2d1a80aa34a        10 days ago         14.3MB
# bash                5lasted             c2d1a80aa34a        10 days ago         14.3MB
# bash                latest              39a95ac32011        5 weeks ago         13.1MB
# bash                5.1-rc1             13232906cd29        5 weeks ago         13.7MB
# bash                <none>              7d83a6d8d42d        2 months ago        13.7MB
# 
# $ docker images bash:5.1.0rc3
# REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
# bash                5.1.0rc3            c2d1a80aa34a        10 days ago         14.3MB
# 
# 
# $ docker run --rm -ti bash:5.1.0rc3 bash
# bash-5.1# exit
# exit
# 
# $ docker run -v //c/Users/%UserName%/Downloads/WORK01:/home/win -v /:/home/busybox --name common_test_volume --rm -ti bash:5.1.0rc3 bash
# bash-5.1# ls /home/busybox
# baa        ced        etc        home       media      opt        root       sbin       sys        tmp        var
# bin        dev        gittest    lib        mnt        proc       run        srv        test1.awk  usr
# bash-5.1# ls /home/win
# aaaab.txt
# bash-5.1# exit
# exit
# 
# # todo : 次は、~/.bash_history
# 



# https://ftp.gnu.org/gnu/gawk/
# https://ftp.gnu.org/gnu/gawk/gawk-5.1.0.tar.lz , 2020-04-14 08:00	2.9M
# https://ftp.gnu.org/gnu/gawk/gawk-5.1.0.tar.xz , 2020-04-14 08:00	3.0M


# 
# https://onedrive.live.com/redir?resid=FCDC463B0C5AB310%21322&page=Edit&wd=target%28Index2020.one%7C28e49b0e-a387-4ffc-a71b-0b76144d4adf%2FGawk%7Cc280cb76-e0ae-40bf-a4d9-8ee49b05e028%2F%29&wdorigin=703
#
# # -- ------------------------------------------------------------------------------------------------------ -- 
# http://mfi.sub.jp/gallery_gawk.html 
#  
# Gawk & DLL 
# http://mfi.sub.jp/_html_awk/gawk_basic.html 
# http://wim-blit.nl/building-gawk-extension/ 
#  
# %UserProfile:C:=D:%\Downloads\gawk-5.1.0-w32-bin 
# https://sourceforge.net/projects/ezwinports/files/ 
#  
# これ専用の man を整備したい 
#  
# busybox:pawk 
# http://blog.livedoor.jp/kikwai/archives/52261525.html 
#  
#  
# https://hub.docker.com/r/atarumix/gawk5-alpine 
# https://qiita.com/kaizen_nagoya/items/c362cb343a412fe12d46 
#  
# # これでいける！ 
# docker run --rm atarumix/gawk5-alpine --version 
# # ezwinports と docker どっちがいいんだろう、、 
#  
# Gawk API について 
# https://codezine.jp/article/detail/8324 
# # -- ------------------------------------------------------------------------------------------------------ -- 
# 


# 興味深い"man"page
# http://www.qnx.com/developers/docs/6.5.0/index.jsp?topic=%2Fcom.qnx.doc.neutrino_utilities%2Fg%2Fgawk.html 




# これ以降を Dockerfile.gawk.DockerBuildScriptへ

# -- -------------------------------- gawk head rev. build script
# https://github.com/atarumix/docker-alpine-gawk5/blob/master/Dockerfile

# https://savannah.gnu.org/git/?group=gawk
# https://git.savannah.gnu.org/cgit/gawk.git
# https://git.savannah.gnu.org/cgit/gawk.git/
# gawk-5.1-stable
# 2021/04/upd
# https://git.savannah.gnu.org/cgit/gawk.git/log/?h=gawk-5.1-stable
# https://git.savannah.gnu.org/cgit/gawk.git/commit/?h=gawk-5.1-stable&id=f271311ac33d44e68da147a273847c3ce8552bb8



FROM alpine:latest
MAINTAINER tmsa34106

WORKDIR /tmp
RUN apk add --no-cache gcc make musl-dev && wget -O gawk-5.1.0.tar.xz http://ftp.gnu.org/gnu/gawk/gawk-5.1.0.tar.xz && tar xJvf gawk-5.1.0.tar.xz && rm gawk-5.1.0.tar.xz

WORKDIR /tmp/gawk-5.1.0
RUN if [ -f '/proc/cpuinfo' ]; then CPUNUM=`grep -c ^processor /proc/cpuinfo`;CPUNUM=`expr 1 + $CPUNUM` ;else CPUNUM=1; fi ;  ./configure && make -j$CPUNUM && strip gawk

FROM alpine:latest
MAINTAINER tmsa34106
RUN mkdir /src && mkdir /usr/local/lib/gawk
COPY --from=0 /tmp/gawk-5.1.0/gawk /usr/local/bin/gawk5
COPY --from=0 /tmp/gawk-5.1.0/extension/.libs/*.so /usr/local/lib/gawk/
WORKDIR /src
ENTRYPOINT ["/usr/local/bin/gawk5"]
CMD ["--help"]

# # docker rmi tmsa34106/gawk:5.1.stable
# docker build -f %APPDATA%\Docker\githubDockerfiles\Dockerfiles\Dockerfiles\Dockerfile.gawk.DockerBuildScript -t tmsa34106/gawk:5.1.stable .
# docker images tmsa34106/gawk:5.1.stable
# docker run --rm -it tmsa34106/gawk:5.1.stable --version
# docker push tmsa34106/gawk:5.1.stable




# git.head は少し工夫がいりそう

# ENV _GAWK_COMMIT 0e51345317f007a7733c25e64d304e416f0945bf
# ENV _GAWK_VERSION gawk5.1stable,
# 
# FROM alpine:3.13.4
# MAINTAINER tmsa34106
# WORKDIR /tmp
# # atarumix.org
# # RUN apk add --no-cache gcc make musl-dev && wget http://ftp.gnu.org/gnu/gawk/gawk-5.1.0.tar.xz && tar xJvf gawk-5.1.0.tar.xz && rm gawk-5.1.0.tar.xz
# RUN apk add --no-cache gcc make musl-dev && wget -O gawk-5.1.0.tar.gz "https://git.savannah.gnu.org/cgit/gawk.git/snapshot/gawk-f271311ac33d44e68da147a273847c3ce8552bb8.tar.gz" && tar -zxvf gawk-5.1.0.tar.gz && rm gawk-5.1.0.tar.gz
# WORKDIR /tmp/gawk-5.1.0
# RUN if [ -f '/proc/cpuinfo' ]; then CPUNUM=`grep -c ^processor /proc/cpuinfo`;CPUNUM=`expr 1 + $CPUNUM` ;else CPUNUM=1; fi ;  ./configure && make -j$CPUNUM && strip gawk
# 
# FROM alpine:3.13.4
# MAINTAINER tmsa34106
# RUN mkdir /src && mkdir /usr/local/lib/gawk
# COPY --from=0 /tmp/gawk-5.1.0/gawk /usr/local/bin/gawk5
# COPY --from=0 /tmp/gawk-5.1.0/extension/.libs/*.so /usr/local/lib/gawk/
# WORKDIR /src
# ENTRYPOINT ["/usr/local/bin/gawk5"]
# CMD ["--help"]
# 
# 
# # docker rmi tmsa34106/gawk:5.1.stable
# # docker build -f %APPDATA%\Docker\githubDockerfiles\Dockerfiles\Dockerfiles\Dockerfile.gawk.DockerBuildScript -t tmsa34106/gawk:5.1.stable .
# # docker push tmsa34106/gawk:5.1.stable
# 
