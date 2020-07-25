web: bundle exec puma -t 5:5 -p ${PORT:-3000} -e ${RACK_ENV:-development}

# https://devcenter.heroku.com/articles/queuing-ruby-resque#job-failures
worker: env TERM_CHILD=1 RESQUE_TERM_TIMEOUT=10 bundle exec rake resque:work QUEUE=*

# https://devcenter.heroku.com/articles/release-phase
release: bundle exec rails db:migrate
