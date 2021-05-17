# https://hub.docker.com/_/perl
# https://hub.docker.com/_/perl?tab=tags&page=1&ordering=last_updated


# DockerHub.Offical.Perl.Dockerfile
# https://github.com/Perl/docker-perl


cat Dockerfile.Perl.buildscript

# # docker rmi tmsa34106/perl:5.32.1.test
# docker build -f %APPDATA%\Docker\githubDockerfiles\Dockerfiles\Dockerfiles\Dockerfile.Perl.buildscript -t tmsa34106/perl:5.32.1.test .
# docker images tmsa34106/perl:5.32.1.test
# docker run --rm -it tmsa34106/perl:5.32.1.test perl -v
# docker run --rm -it tmsa34106/perl:5.32.1.test perl -e "print 'AAA'."""\n""";" & REM DOS
# docker run --rm -it tmsa34106/perl:5.32.1.test perl -e 'print "AAA\n";'
# docker push tmsa34106/perl:5.32.1.test



# # docker rmi tmsa34106/perl:5.33.8.test
# docker build -f %APPDATA%\Docker\githubDockerfiles\Dockerfiles\Dockerfiles\Dockerfile.Perl.buildscript -t tmsa34106/perl:5.33.8.test .
# docker images tmsa34106/perl:5.33.8.test
# docker run --rm -it tmsa34106/perl:5.33.8.test perl -v
# docker run --rm -it tmsa34106/perl:5.33.8.test perl -e "print 'AAA'."""\n""";" & REM DOS
# docker run --rm -it tmsa34106/perl:5.33.8.test perl -e 'print "AAA\n";'
# docker push tmsa34106/perl:5.33.8.test


# -- -------------------------------------------------------- build status _start_

# $ docker build -f %APPDATA%\Docker\githubDockerfiles\Dockerfiles\Dockerfiles\Dockerfile.Perl.buildscript -t tmsa34106/perl:5.32.1.test .
# [+] Building 1404.4s (9/9) FINISHED
#  => [internal] load build definition from Dockerfile.Perl.buildscript                                                                   0.1s  
#  => => transferring dockerfile: 2.27kB                                                                                                  0.0s  
#  => [internal] load .dockerignore                                                                                                       0.1s  
#  => => transferring context: 2B                                                                                                         0.0s  
#  => [internal] load metadata for docker.io/library/debian:buster-slim                                                                   1.3s  
#  => [internal] load build context                                                                                                       0.0s  
#  => => transferring context: 2B                                                                                                         0.0s  
#  => [1/5] FROM docker.io/library/debian:buster-slim@sha256:b586cf8c850cada85a47599f08eb34ede4a7c473551fd7c68cbf20ce5f8dbbf1             6.6s  
#  => => resolve docker.io/library/debian:buster-slim@sha256:b586cf8c850cada85a47599f08eb34ede4a7c473551fd7c68cbf20ce5f8dbbf1             0.0s  
#  => => sha256:b586cf8c850cada85a47599f08eb34ede4a7c473551fd7c68cbf20ce5f8dbbf1 1.85kB / 1.85kB                                          0.0s  
#  => => sha256:f4793ff7e177674c0b8541165f67289907aaf4391f60d71ba2a3db8a70fa76dc 529B / 529B                                              0.0s  
#  => => sha256:48e774d3c4f5ad4f5dc12755c44363a2037d074302618f704bd07774df9b1e10 1.46kB / 1.46kB                                          0.0s  
#  => => sha256:f7ec5a41d630a33a2d1db59b95d89d93de7ae5a619a3a8571b78457e48266eba 27.14MB / 27.14MB                                        3.0s  
#  => => extracting sha256:f7ec5a41d630a33a2d1db59b95d89d93de7ae5a619a3a8571b78457e48266eba                                               2.9s  
#  => [2/5] COPY *.patch /usr/src/perl/                                                                                                   0.1s  
#  => [3/5] WORKDIR /usr/src/perl                                                                                                         0.1s  
#  => [4/5] RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl       1395.3s  
#  => exporting to image                                                                                                                  0.7s  
#  => => exporting layers                                                                                                                 0.7s  
#  => => writing image sha256:dbfd6e92dc35f80e2f4fc9a2afdf26042d5d1422d1ed8bc88a4aceee3e5aa840                                            0.0s  
#  => => naming to docker.io/tmsa34106/perl:5.32.1.test                                                                                   0.0s

# --

# $ docker images tmsa34106/perl:5.32.1.test
# REPOSITORY       TAG           IMAGE ID       CREATED         SIZE
# tmsa34106/perl   5.32.1.test   dbfd6e92dc35   4 minutes ago   126MB

# --

# $ docker images debian:buster-slim
# REPOSITORY   TAG           IMAGE ID       CREATED        SIZE
# debian       buster-slim   48e774d3c4f5   11 hours ago   69.3MB

# -- -------------------------------------------------------- build status _.end._


# Dockerfile.Perl_build は多分放棄
# Dockerfile.Perl.DockerCompose >>> Dockerfile.Perl.k8s or Dockerfile.Perl.toOrchestration


# docker pull perl:5.32.0-slim-threaded-stretch
docker pull perl:5.32.0-slim-stretch

docker images perl:5.32.0-slim-stretch

# REPOSITORY          TAG                   IMAGE ID            CREATED             SIZE
# perl                5.32.0-slim-stretch   8a90c4310fa8        10 days ago         112MB
# 

docker run --rm -ti perl:5.32.0-slim-stretch perl -v

#
# This is perl 5, version 32, subversion 0 (v5.32.0) built for x86_64-linux-gnu
# 
# Copyright 1987-2020, Larry Wall
# 
# Perl may be copied only under the terms of either the Artistic License or the
# GNU General Public License, which may be found in the Perl 5 source kit.
# 
# Complete documentation for Perl, including FAQ lists, should be found on
# this system using "man perl" or "perldoc perl".  If you have access to the
# Internet, point your browser at http://www.perl.org/, the Perl Home Page.

# google : Perl REPL

docker run --rm -ti perl:5.32.0-slim-stretch perl -d

# 
# Loading DB routines from perl5db.pl version 1.57
# Editor support available.
# 
# Enter h or 'h h' for help, or 'man perldebug' for more help.
# 
# Debugged program terminated.  Use q to quit or R to restart,
# use o inhibit_exit to avoid stopping after program termination,
# h q, h R or h o to get additional info. # 適当なタイミングで Ctrl + D
#   DB<1> q

# google : PDL perl dockerhub
# google : PDL perl
# https://hub.docker.com/r/wlmb/perldatalanguage

docker pull wlmb/perldatalanguage:latest

docker images wlmb/perldatalanguage:latest
# REPOSITORY              TAG                 IMAGE ID            CREATED             SIZE
# wlmb/perldatalanguage   latest              f478a8e4d831        9 months ago        1.91GB

# $ docker run --rm -ti wlmb/perldatalanguage:latest pdl
# docker: Error response from daemon: OCI runtime create failed: container_linux.go:349: starting container process caused "exec: \"pdl\": executable file not found in $PATH": unknown.


# # Synopsis
# $ docker run -p 22 -ti -v /tmp/.X11-unix/:/tmp/.X11-unix/ wlmb/perldatalanguage  
# login: user
# Password: user
# $ export DISPLAY=:0
# $ pdl
# pdl> use PDL::Graphics::Gnuplot
# pdl> gplot(zeroes(50)->xlinvals(0,15)->sin)
# pdl> q
# $ perl -MPDL -E 'say zeroes(10)->xvals'
# [0 1 2 3 4 5 6 7 8 9]
# $ 

# https://hub.docker.com/_/perl?tab=tags&page=1&ordering=last_updated
# docker pull perl:slim-threaded-stretch
# docker pull perl:5.32.0-slim-threaded-stretch
# $ docker images perl
# REPOSITORY          TAG                            IMAGE ID            CREATED             SIZE
# perl                5.32.0-slim-threaded-stretch   45d62f849542        3 weeks ago         112MB
# perl                slim-threaded-stretch          45d62f849542        3 weeks ago         112MB
# 
