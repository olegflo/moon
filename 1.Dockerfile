FROM ruby:2.5-alpine

# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1


WORKDIR /usr/src/app

RUN apk add bash

RUN apk add --update \
        build-base   \
        libxml2-dev  \
        libxslt-dev  \
        sqlite-dev   \
        nodejs       \
        tzdata


COPY Gemfile Gemfile.lock ./

RUN bundle install

COPY . .

EXPOSE 3001

CMD rails s