# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'weather/icons/sass/version'

Gem::Specification.new do |spec|
  spec.name          = "weather-icons-sass"
  spec.version       = Weather::Icons::Sass::VERSION
  spec.authors       = ["Keith Woody"]
  spec.email         = ["keith.woody@gmail.com"]

  spec.summary       = %q{Weather-Icons SASS}
  spec.description   = %q{Weather-icons sass integration for ruby projects.}
  spec.homepage      = "https://github.com/keithwoody/weather-icons-sass"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "sass-rails"
  spec.add_development_dependency "compass"
end
