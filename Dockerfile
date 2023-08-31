FROM ruby:3.2.1

RUN apt-get update -qq \
 && apt-get install -yqq --non-install-recommends \ 
 postgresql-client \
 nodejs \
 qt5-default \
    libqt5webkit5-dev \
    && apt-get -q clean \
    && rm -rf /var/lib/apt/lists

WORKDIR /app
COPY Gemfile* ./
RUN bundle install
COPY . .

CMD bundle exec rails s -p 3000 -b '