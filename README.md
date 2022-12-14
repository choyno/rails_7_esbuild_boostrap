RUN LOCAL "bin/dev"

SPECS!! Create Specific Rails version

###mkdir @appname
###cd @appname

###echo 3.0.0 > .ruby-version
###echo "source 'https://rubygems.org'" > Gemfile
###echo "gem 'rails', '~>7.0.4'"  >>  Gemfile

###rvm gemset use  3.1.3@sample_rails_test --create
###bundle install

###bundle exec rails new . --force --skip-bundle --skip-test-unit --api
###bundle exec rails new . --force --skip-bundle --skip-test-unit --database=postgresql --api

###gem install bundler
###sudo gem install bundler

OR WITH CSS

!!REMINDER: make sure to install the node and yarn!!

### brew  install npm
### npm install -g yarn

###bundle add cssbundling-rails
##./bin/rails css:install:bootstrap

###bundle exec rails new . --force --skip-bundle --skip-test-unit --database=postgresql  -j esbuild --css bootstrap

NEW MAC OS ISSUE

2022
https://juanitofatas.com/fragments/pg
###brew reinstall icu4c
###brew services restart postgresql
