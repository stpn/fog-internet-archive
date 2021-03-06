# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "fog/internet_archive/version"

Gem::Specification.new do |spec|
  spec.name          = "fog-internet-archive"
  spec.version       = Fog::InternetArchive::VERSION
  spec.authors       = ["Nat Welch"]
  spec.email         = ["nat@natwelch.com"]
  spec.summary       = "Module for the 'fog' gem to support Internet Archive."
  spec.homepage      = "https://github.com/fog/fog-internet-archive"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|feature)s?/})
  spec.require_paths = ["lib"]

  spec.add_dependency "fog-core", ">= 1.21.0"
  spec.add_dependency "fog-json"
  spec.add_dependency "fog-xml"

  spec.add_development_dependency "rake"
  spec.add_development_dependency "shindo"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "vcr"
  spec.add_development_dependency "webmock"
  spec.add_development_dependency "coveralls"
  spec.add_development_dependency "rubocop"
  spec.add_development_dependency "mime-types"
end
