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
