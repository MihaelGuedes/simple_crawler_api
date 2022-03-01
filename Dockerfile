FROM ruby:3.0.3

RUN apt-get update && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /app

WORKDIR /app

COPY . /app

RUN bundle install

EXPOSE 3000

CMD ["bundle", "exec", "rails", "server", "-p", "3000", "-b", "0.0.0.0"]