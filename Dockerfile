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

# port: "4000:4000"
# command: bundle exec jekyll serve --config pages/_config_local.yml -H 0.0.0.0 -t`
# mount: ".:/usr/src/app/pages"