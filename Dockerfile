FROM ruby:2.5.7

RUN apt-get update -qq && \
    apt-get install -y build-essential \
                       libpq-dev \
                       nodejs \
                       vim

RUN mkdir /weplay

WORKDIR /weplay

ADD Gemfile /weplay/Gemfile
ADD Gemfile.lock /weplay/Gemfile.lock

RUN gem install bundler
RUN bundle install

ADD . /weplay

RUN mkdir -p tmp/sockets
RUN mkdir -p tmp/pidsx
