FROM ruby:2.5

RUN gem install rack puma rerun

ADD ./app /app

WORKDIR /app

EXPOSE 9292

CMD ["rerun", "rackup hello_world.ru -o 0.0.0.0"]
