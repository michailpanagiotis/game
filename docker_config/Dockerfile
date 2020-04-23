FROM elixir:alpine
MAINTAINER michailpanagiotis@gmail.com
RUN apk add --update alpine-sdk inotify-tools postgresql-client bash wget curl zip unzip nodejs npm
RUN mix local.rebar --force && \
    mix local.hex --force && \
    mix archive.install hex phx_new --force

COPY ./docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]

ENV PROJECTHOME=/src
ADD . $PROJECTHOME
WORKDIR $PROJECTHOME
