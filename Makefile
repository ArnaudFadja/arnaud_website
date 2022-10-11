# Helper Makefile for Sysait Developers

SHELL := /bin/bash

# HELP
.PHONY: help

help: ## This help.
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

.DEFAULT_GOAL := help

dev: ## start dev server
	bundler exec rails s -p 3000

unit-test: ## start unit tests
	bundler exec rails db:test:prepare && \
	bundle exec rspec --fail-fast

databases: ## Database in
	rails db:create

migrations: ## Database initialization and tables creation
	bundler exec rails db:migrate && \
	bundler exec rails db:migrate RAILS_ENV=test

dependencies: ## System dependencies
	bundle install


requirements: ## Database initialization and tables creation
	bundle update --bundler && \
	bundle config set force_ruby_platform true && \
	yarn install --check-files


	