FROM ruby:2.6.3
ADD Gemfile
ADD Gemfile.lock
RUN gem install bundler && \ bundle install
WORKDIR /app
