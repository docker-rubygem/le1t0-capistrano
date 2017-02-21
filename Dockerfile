FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=2.5.18.024

RUN gem install le1t0-capistrano --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["capify"]
CMD ["--help"]
