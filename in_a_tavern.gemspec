require_relative "lib/in_a_tavern/version"

Gem::Specification.new do |spec|
  spec.name        = "in_a_tavern"
  spec.version     = InATavern::VERSION
  spec.authors     = ["Caleb Hearth"]
  spec.email       = ["caleb@calebhearth.com"]
  spec.homepage    = "https://calebhearth.com"
  spec.summary     = "Single user ActivityPub on Rails"
  spec.description = "ActivityPub on Rails for a single user"
  spec.license     = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/calebhearth/in_a_tavern"
  spec.metadata["changelog_uri"] = "https://github.com/calebhearth/in_a_tavern/tree/main/NEWS"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "actionpack"
end
