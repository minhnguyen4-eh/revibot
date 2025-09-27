FROM ruby:3.2.8

RUN mkdir -p /app
WORKDIR /app

# Bundle install
COPY Gemfile ./
RUN gem install bundler -v "~> 2.4" && bundle install

# Copy the main application
COPY . ./

CMD ["ruby", "app.rb"]