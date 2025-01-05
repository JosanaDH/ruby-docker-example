ARG STOP_SNYK
FROM ruby:${STOP_SNYK}

WORKDIR /app

ADD Gemfile Gemfile.lock /app/
RUN bundle install -j 8

ADD . /app
