# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tableau_rest_api/version'

Gem::Specification.new do |spec|
  spec.name          = "tableau_rest_api"
  spec.version       = TableauRestApi::VERSION
  spec.authors       = ["Dave Lancaster"]
  spec.email         = ["lancaster.dave@gmail.com"]

  spec.summary       = %q{Ruby library wrapping the Tableau REST API.}
  spec.description   = %q{Exposes a subset of the Tableau v2.6 REST API (json).}
  spec.homepage      = "https://github.com/davelancaster/tableau-rest-api"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "vcr", "~> 3.0"
  spec.add_development_dependency "webmock", "~> 3.0"

  spec.add_dependency "rest-client", "~> 2.0"
  spec.add_dependency "aspector", "~> 0.14"
  spec.add_dependency "timerizer", "~> 0.1"
end
