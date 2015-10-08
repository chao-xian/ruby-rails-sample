FROM alpine:3.2

RUN apk update && apk --update add ruby ruby-irb ruby-json ruby-rake \
    ruby-bigdecimal ruby-io-console libstdc++ tzdata postgresql-client nodejs

ADD Gemfile /app/
ADD Gemfile.lock /app/

RUN apk --update add --virtual build-dependencies build-base ruby-dev openssl-dev \
    postgresql-dev libc-dev linux-headers
RUN gem install bundler
RUN pwd
RUN ls -l app && cd /app; bundle install --without development test
RUN apk del build-dependencies

ADD . /app
RUN chown -R nobody:nogroup /app
USER nobody

ENV RAILS_ENV production
WORKDIR /app

CMD ["bundle", "exec", "unicorn", "-p", "8080", "-c", "./config/unicorn.rb"]
