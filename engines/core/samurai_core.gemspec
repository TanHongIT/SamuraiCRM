# $:.push File.expand_path("lib", __dir__)
$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
# require "core/version"
require "samurai/core/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "samurai_core"
  spec.version     = Samurai::Core::VERSION
  spec.authors     = ["tanhongit"]
  spec.email       = ["phuongtan12357nguyen@gmail.com"]
  spec.homepage    = "http://samurails.com"
  spec.summary     = "http://samurails.com: Summary of Core."
  spec.description = "http://samurails.com: Description of Core."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata["allowed_push_host"] = "http://samurails.com: Set to 'http://mygemserver.com'"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against " \
  #     "public gem pushes."
  # end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  spec.test_files = Dir[""]
  spec.add_dependency "rails", "~> 6.0.3", ">= 6.0.3.2"

  spec.add_dependency 'sass-rails'
  spec.add_dependency 'bootstrap-sass'
  spec.add_dependency 'autoprefixer-rails'
  spec.add_dependency 'devise'
  spec.add_dependency 'cancan'

  spec.add_development_dependency "postgresql"
  #Rspec
  spec.add_development_dependency 'rspec-rails'
  spec.add_development_dependency 'factory_bot_rails'
  spec.add_development_dependency 'faker'
  spec.add_development_dependency 'database_cleaner'
end
