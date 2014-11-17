# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'iks_scrape/version'

Gem::Specification.new do |spec|
  spec.name          = "iks_scrape"
  spec.version       = IksScrape::VERSION
  spec.authors       = ["Michal Pokorný"]
  spec.email         = ["pok@rny.cz"]
  spec.summary       = %q{A simple IKS fund value scraper.}
	spec.description   = %q{Scrapes the daily values of IKS's investment funds.}
	spec.homepage      = "https://github.com/MichalPokorny/iks-scrape"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "mechanize"

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
