# https://hub.docker.com/_/perl
# https://hub.docker.com/_/perl?tab=tags&page=1&ordering=last_updated


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

