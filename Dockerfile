FROM ruby:2.7.6

RUN apt-get update -qq && apt-get install -y build-essential postgresql-client

ENV APP_HOME /rails-peoplefinder-api
ENV POSTGRES_HOST postgres
ENV POSTGRES_USER postgres

RUN mkdir $APP_HOME
WORKDIR $APP_HOME

ADD Gemfile* $APP_HOME/
RUN bundle install -j8

ADD . $APP_HOME
