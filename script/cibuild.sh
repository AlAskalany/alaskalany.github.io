#!/bin/sh

set -e

bundle exec jekyll build
bundle exec htmlproofer ./_site --check-html --check-sri --disable-external
bundle exec rubocop -D
bundle exec script/validate-html
gem build jekyll-theme-cayman.gemspec
