source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}" }

# Specify your gem's dependencies in in_a_tavern.gemspec.
gemspec

gem "sqlite3"
gem "sprockets-rails"
gem "rails"
if (rails_version = ENV["RAILS_VERSION"])
  case rails_version
  when "main"
    gem "actionpack", github: "rails/rails"
  else
    gem "actionpack", "~> #{rails_version}.0"
  end
end
