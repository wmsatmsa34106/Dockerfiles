https://hub.docker.com/_/ruby?tab=description
https://hub.docker.com/_/ruby?tab=tags&page=1&ordering=last_updated

docker pull ruby:3.0.0-preview1-slim
docker pull ruby:3.0-rc-slim

docker images | grep ruby | grep 3.0


docker run --rm -it ruby:3.0-rc-slim ruby --version

docker run --rm -it ruby:3.0-rc-slim irb



ruby                                 3.0-rc-slim                                      27898ab7fa81        9 days ago          155MB
ruby                                 3.0.0-preview1-slim                              27898ab7fa81        9 days ago          155MB



docker pull ruby:2.7.2-alpine3.12
docker images ruby:2.7.2-alpine3.12

REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
ruby                2.7.2-alpine3.12    79f5adf3c887        5 weeks ago         51.7MB


docker run --rm -it ruby:2.7.2-alpine3.12 ruby --version
