source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.3'

group :production do
  gem 'pg'
  gem 'rails_12factor'
end

group :development do
  gem 'sqlite3'
end

gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'thor', '0.20.0'

group :development do
  gem 'listen', '~> 3.0.5'
end

group :test do
  gem "nyan-cat-formatter"
end

group :development, :test do
  gem 'rspec-rails', '~> 3.0'
  gem 'rails-controller-testing'
  gem 'shoulda'
  gem 'byebug'
  gem 'factory_girl_rails', '~> 4.0'
end

gem 'bootstrap-sass'
gem 'bcrypt'
gem 'figaro', '1.0'
gem 'faker'
gem 'active_model_serializers', '~> 0.10.0'
