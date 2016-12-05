# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'swagger-ui_rails5/version'

Gem::Specification.new do |gem|
  gem.name          = "swagger-ui_rails5"
  gem.version       = Swagger::UiRails5::VERSION
  gem.authors       = ["Stjepan Hadjic", "Yuri Skurikhin"]
  gem.email         = ["Stjepan.hadjic@infinum.hr"]
  gem.description   = %q{A gem to add swagger-ui to rails asset pipeline}
  gem.summary       = %q{Add swagger-ui to your rails app easily}
  gem.homepage      = "https://github.com/yunixon/swagger-ui_rails"
  gem.license       = 'MIT'

  gem.files = Dir["{app,lib}/**/*", "LICENSE.txt", "Rakefile", "README.md"]
  gem.require_paths = ["lib"]

  gem.add_development_dependency "bundler", "~> 1.3"
  gem.add_development_dependency "rake"
end
