source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}" }

# Specify your gem's dependencies in in_a_tavern.gemspec.
gemspec

gem "sqlite3"
gem "sprockets-rails"
if (rails_version = ENV["RAILS_VERSION"])
  case rails_version
  when "main"
    gem "rails", github: "rails/rails"
  else
    gem "rails", "~> #{rails_version}.0"
  end
end
