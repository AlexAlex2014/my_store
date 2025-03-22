FROM ruby:3.4.2

RUN apt-get update -qq && apt-get install -y \
  apt-utils \
  build-essential \
  libpq-dev \
  nodejs \
  default-mysql-client \
  libyaml-dev \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /my_store

COPY Gemfile Gemfile.lock ./

RUN bundle install

COPY . /my_store

EXPOSE 3000

CMD ["bin/rails", "server", "-b", "0.0.0.0"]

