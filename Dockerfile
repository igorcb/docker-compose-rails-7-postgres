FROM ruby:3.2.2

RUN apt-get update && apt-get install -qq -y --no-install-recommends \
  build-essential nodejs libpq-dev imagemagick zlib1g-dev libyaml-dev\
  libmagickwand-dev libmagickcore-dev vim

RUN mkdir /myapp

WORKDIR /myapp

ADD Gemfile /myapp/Gemfile

ADD Gemfile.lock /myapp/Gemfile.lock

RUN bundle install

ADD . /myapp
