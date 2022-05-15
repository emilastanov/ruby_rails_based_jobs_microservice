# syntax=docker/dockerfile:1
FROM ruby:3.0.2
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN gem install bundler --version "1.17.3"
COPY . .
RUN bundle install

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000
