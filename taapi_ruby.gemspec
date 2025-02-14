# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'taapi_ruby/version'

Gem::Specification.new do |spec|
  spec.name          = 'taapi_ruby'
  spec.version       = TaapiRuby::VERSION
  spec.authors       = ['tomily1']
  spec.email         = ['itomilayo@gmail.com']

  spec.summary       = 'A Ruby wrapper for the taapi.io API'
  spec.description   = 'This gem provides a simple interface to interact with the taapi.io API.'
  spec.homepage      = 'https://github.com/tomily1/taapi_ruby'
  spec.license       = 'MIT'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/tomily1/taapi_ruby'

  spec.files         = Dir['lib/**/*.rb']
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 3.0'

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'webmock', '~> 3.25'
  spec.metadata['rubygems_mfa_required'] = 'true'
end
