# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mfind_rubocop_rspec_rails'

Gem::Specification.new do |spec|
  spec.name          = 'mfind-rubocop-rspec-rails'
  spec.version       = MfindRuboCopRSpecRails::VERSION
  spec.authors       = ['mFind IT']
  spec.license       = 'Nonstandard'
  spec.email         = ['development@mfind.pl']
  spec.date          = '2019-07-13'
  spec.summary       = 'mFind RuboCop configuration for Ruby apps using RSpec and Ruby on Rails'
  spec.homepage      = 'https://github.com/mfind-project/mfind-rubocop-rspec-rails'
  spec.files         = ['lib/mfind_rubocop_rspec_rails.rb', 'default.yml', '.rubocop.yml']
  spec.require_paths = ['lib']
  spec.add_dependency 'mfind-rubocop-rspec', '~> 1.2.1', '>= 1.2.1'
  spec.add_dependency 'rubocop-rails', '~> 2.4.2'
end
