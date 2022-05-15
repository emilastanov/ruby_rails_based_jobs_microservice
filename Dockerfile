# syntax=docker/dockerfile:1
FROM ruby:3.0.2
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
COPY Gemfile .
COPY Gemfile.lock .
COPY Rakefile .
RUN rake assets:clobber && bundle install

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
COPY . .

ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000
