# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'minitest_less_footguns/version'

Gem::Specification.new do |spec|
  spec.name          = "minitest_less_footguns"
  spec.version       = MinitestLessFootguns::VERSION
  spec.authors       = ["Guillaume Malette"]
  spec.email         = ["guillaume@shopify.com"]

  spec.summary       = %q{Removes footguns from Minitest}
  spec.description   = %q{The Minitest `assert` interface is error-prone. This gems aims to make it less so}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
