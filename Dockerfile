FROM ruby:3.1

ENV LC_ALL C.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

WORKDIR /usr/src/app

COPY Gemfile ./
COPY _i18n/ ./_i18n/
RUN gem install bundler jekyll
RUN bundle install

EXPOSE 4000