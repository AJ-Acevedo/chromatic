# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'chromatic/version'

Gem::Specification.new do |spec|
  spec.name          = "chromatic"
  spec.version       = Chromatic::VERSION
  spec.authors       = ["AJ Acevedo"]
  spec.email         = ["aj@ajalabs.com"]
  spec.description   = %q{Adds methods to the String class for text color, background color, and text formatting options in ruby console and command line output, using ANSI escape sequences.}
  spec.summary       = %q{Colorized is a updated fork of the colorize gem}
  spec.homepage      = "https://github.com/AJ-Acevedo/colorized"
  spec.license       = "GPL"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
