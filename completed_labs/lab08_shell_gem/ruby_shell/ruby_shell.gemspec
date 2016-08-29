# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruby_shell/version'

Gem::Specification.new do |spec|
  spec.name          = "ruby_shell"
  spec.version       = RubyShell::VERSION
  spec.authors       = ["Ben Taitelbaum"]
  spec.email         = ["ben@coshx.com"]

  spec.summary       = %q{RubyShell used in Ruby Training}
  spec.description   = %q{a Framework for learning Ruby by creating a command shell.}
  spec.homepage      = "https://github.com/btaitelb/RubyTraining"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = Dir.glob('lib/**/*.rb')
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end
