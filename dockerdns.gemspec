# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dockerdns/version'

Gem::Specification.new do |spec|
  spec.name          = "dockerdns"
  spec.version       = Dockerdns::VERSION
  spec.authors       = ["Christian Schritt"]
  spec.email         = ["christian.schritt@gmail.com"]

  spec.summary       = %q{Monitor Docker events and dynamically update DNS zones}
  spec.description   = %q{This Gem give you the power to monitor the Docker event stream via it's API and send dynamic updates to a DNS server on certain events}
  spec.homepage      = "https://github.com/cschritt/dockerdns"
  spec. license	     = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.require_paths = ["lib"]

  # runtime dependencies
  spec.add_runtime_dependency "dnsruby", "~> 1.50"
  spec.add_runtime_dependency "docker-api", "~> 1.23"

  # development dependencies
  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "codeclimate-test-reporter", "~> 0.4" 
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.4"
end
