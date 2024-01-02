# frozen_string_literal: true

source 'https://rubygems.org'

# Specify your gem's dependencies in technologies-list-maple.gemspec
gemspec

gem 'rake', '~> 13.0'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'rspec', '>= 2.7', require: false
end

group :development do
  gem 'rubocop', '~> 1.21', require: false
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
end
