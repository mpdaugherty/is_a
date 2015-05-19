$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "is_a_validator/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "is_a_validator"
  s.version     = IsA::VERSION
  s.authors     = ["Michael P. Daugherty"]
  s.email       = ["mike@mpdaugherty.com"]
  s.homepage    = "https://github.com/mpdaugherty/is_a_validator"
  s.summary     = "Adds an \"is_a\" validator to validate polymorphic relations."
  s.description = "Adds an \"is_a\" validator to validate polymorphic relations."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.0"

  s.add_development_dependency "sqlite3"
end
