FROM ruby:2.5

ENV DEBCONF_NOWARNINGS yes
ENV LANG C.UTF-8

ENV APP_ROOT /app

RUN mkdir ${APP_ROOT}
WORKDIR ${APP_ROOT}

RUN apt-get update && apt-get install -y build-essential libpq-dev

ADD Gemfile* ${APP_ROOT}/

ADD . ${APP_ROOT}
