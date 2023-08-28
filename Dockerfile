# syntax=docker/dockerfile:1
FROM ruby:2.7.0 AS embarca

RUN apt-get update -qq && apt-get install -y postgresql-client
WORKDIR /embarca
COPY Gemfile /embarca/Gemfile
COPY Gemfile.lock /embarca/Gemfile.lock
RUN bundle install

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT [ "entrypoint.sh" ]
EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]