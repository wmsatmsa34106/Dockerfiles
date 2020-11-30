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
 
