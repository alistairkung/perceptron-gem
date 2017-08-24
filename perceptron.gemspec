# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "perceptron/version"

Gem::Specification.new do |spec|
  spec.name          = "perceptron"
  spec.version       = "0.1.1"
  spec.authors       = ["Alessandro Noiato", "Alistair Kung", "Corina Gheorghe", "Jini Coroneo", "Tom Scanlon"]
  spec.email         = ["doctorboredom@hotmail.com"]

  spec.summary       = %q{A reusable perceptron implementation written in ruby from scratch.}
  spec.homepage      = "https://github.com/terminalobject/Perceptron" 
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  #if spec.respond_to?(:metadata)
  #  spec.metadata["allowed_push_host"] = "http://mygemserver.com'"
  #else
  #  raise "RubyGems 2.0 or newer is required to protect against " \
  #    "public gem pushes."
  #end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end 
  spec.files << ["lib/perceptron.rb", "lib/perceptron/unit.rb", "lib/perceptron/weight.rb"]
  spec.files.flatten
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end