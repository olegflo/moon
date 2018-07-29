FROM ruby:2.5-alpine

RUN apk add --update            \
        bash                    \
        build-base              \
        libxml2-dev             \
        libxslt-dev             \
        nodejs                  \
        tzdata                  \
        postgresql-dev

WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock ./

RUN bundle install

EXPOSE 3001

CMD rails s
