FROM ruby:2.2-slim

RUN apt-get update && apt-get install -y build-essential

RUN mkdir -p /app
WORKDIR /app

COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock

RUN bundle install

