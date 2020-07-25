FROM ruby:2.7

# Fetch Node
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -

# Fetch Yarn
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt-get update -qq && apt-get install -y nodejs yarn

WORKDIR app

COPY Gemfile /app/
COPY Gemfile.lock /app/
RUN bundle install

# everything else do as non-root user!
USER 1000:1000
