FROM ruby:2.5.1-stretch

RUN apt update && apt install --assume-yes libpq-dev
WORKDIR /app/hanami_todo_sandbox
COPY Gemfile Gemfile.lock /app/hanami_todo_sandbox/
RUN bundle install
COPY . /app/hanami_todo_sandbox/
#CMD ["bundle", "exec", "hanami", "server"]
