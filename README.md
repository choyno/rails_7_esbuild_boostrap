RUN LOCAL "bin/dev"

SPECS!! Create Specific Rails version

mkdir @appname
cd @appname

echo 3.0.0 > .ruby-version
echo "source 'https://rubygems.org'" > Gemfile
echo "gem 'rails', '~>7.0.4'"  >>  Gemfile

rvm gemset use  3.1.3@sample_rails_test --create
bundle install

bundle exec rails new . --force --skip-bundle --skip-test-unit --api
bundle exec rails new . --force --skip-bundle --skip-test-unit --database=postgresql --api

gem install bundler
sudo gem install bundler

OR WITH CSS

bundle exec rails new . --force --skip-bundle --skip-test-unit --database=postgresql  -j esbuild --css bootstrap

!!REMINDER: make sure to install the node and yarn!!

brew  install npm
npm install -g yarn

bundle add cssbundling-rails
./bin/rails css:install:bootstrap
.bin/rails javascript:install:esbuild

Fxing JS Issue
yarn add @hotwired/turbo-rails
yarn add @hotwired/stimulus

>add this to your app/javascript/application.js
import "@hotwired/turbo-rails"
import * as bootstrap from "bootstrap"

NEW MAC OS ISSUE PG

2022
https://juanitofatas.com/fragments/pg
brew reinstall icu4c
brew services restart postgresql

DELETE ISSUE RAILS
https://github.com/rails/rails/issues/44185

HOW TO INSTALL CSS AND JS
https://mixandgo.com/learn/ruby-on-rails/how-to-install-bootstrap
