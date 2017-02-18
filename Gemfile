source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.1'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.18'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'


group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  gem 'pry-byebug'
end

group :development do

  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end


gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'friendly_id', '~> 5.1.0'

gem 'devise', '~>4.2'

gem 'bootstrap', '~>4.0.0.alpha6'

gem 'sam_view_tool',git: 'https://github.com/samgrimm/sam-view-tool'

gem 'petergate', '~>1.7'

gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.1'

gem 'kaminari', '~> 1.0', '>= 1.0.1'

gem 'jquery-ui-rails', '~>6.0', '>=6.0.1'
gem 'dotenv-rails', '~>2.1', '>=2.1.2'
gem 'carrierwave-aws', '~>1.0', '>=1.0.2'
gem 'carrierwave', '~>1.0'
gem 'mini_magick', '~>4.6'
gem 'cocoon', '~>1.2', '>=1.2.9'
gem 'gritter', '~>1.2'
gem 'twitter', '~> 6.1'
gem 'redis', '~> 3.3', '>= 3.3.3'
gem 'redcarpet', '~> 3.4'
gem 'coderay', '~> 1.1', '>= 1.1.1'
gem 'rails-i18n', '~> 5.0', '>= 5.0.3'

ruby "2.4.0"
