FROM ubuntu:22.04

# Install the required packages
RUN apt-get update && apt-get install -y \
    git curl build-essential libssl-dev libreadline-dev zlib1g-dev \
    libyaml-dev libffi-dev libsqlite3-dev \
    && rm -rf /var/lib/apt/lists/*

# Install rbenv + ruby-build
RUN git clone https://github.com/rbenv/rbenv.git ~/.rbenv && \
    git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

ENV PATH="/root/.rbenv/bin:/root/.rbenv/shims:${PATH}"

# Install ruby 3.2.8
RUN rbenv install 3.2.8 && rbenv global 3.2.8

RUN gem install bundler
WORKDIR /app
COPY src/ /app
CMD ["ruby", "app.rb"]