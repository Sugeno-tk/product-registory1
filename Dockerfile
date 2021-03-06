FROM ruby:2.5
RUN apt-get update && apt-get install -y \
	build-essential \
	libpq-dev \
	nodejs \
	postgresql \
	yarn
WORKDIR /product-register1
COPY Gemfile Gemfile.lock /product-register1/
RUN bundle install