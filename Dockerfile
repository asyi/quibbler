FROM starefossen/ruby-node:2-8-stretch

RUN apt-get update -qq && \
    apt-get install -y nano build-essential nodejs nodejs-legacy libpq-dev && \
    gem install bundler

RUN npm install

RUN mkdir /project
COPY Gemfile Gemfile.lock /project/
WORKDIR /project
RUN bundle install
COPY package.json package-lock.json ./
RUN npm install

COPY . /project
RUN RAILS_ENV=production bundle exec rake assets:precompile --trace
CMD ["foreman", "start", "-f", "Procfile.dev", "-p", "3000"]