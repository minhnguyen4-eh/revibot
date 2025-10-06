source "https://rubygems.org"

ruby "3.2.8"

gem "rails", "~> 7.1.5", ">= 7.1.5.2"
gem "sqlite3", ">= 1.4"
gem "puma", ">= 5.0"
gem "jbuilder", "~> 2.10.1"
gem "pry-byebug"
gem "tzinfo-data", platforms: %i[ windows jruby ]
gem "bootsnap", require: false
gem "rack-cors"
# Slack Integration
gem "slack-ruby-bot-server", "1.2.1"
gem "slack-ruby-bot-server-events", "0.3.2"

group :development, :test do
  gem "dotenv-rails"
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri windows ]
end

group :development do
  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end