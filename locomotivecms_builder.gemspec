# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'locomotive/builder/version'

Gem::Specification.new do |gem|
  gem.name          = 'locomotivecms_builder'
  gem.version       = Locomotive::Builder::VERSION
  gem.authors       = ['Didier Lafforgue', 'Rodrigo Alvarez']
  gem.email         = ['papipo@gmail.com']
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ''

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']
  gem.executables   = ['builder']

  gem.add_dependency 'thor'
  gem.add_dependency 'thin'
  gem.add_dependency 'locomotive_liquid',   '~> 2.4.1'
  gem.add_dependency 'RedCloth',            '~> 4.2.9'
  gem.add_dependency 'dragonfly',           '~> 0.9.12'
  gem.add_dependency 'rack-cache',          '~> 1.1'
  gem.add_dependency 'rack-rescue',         '~> 0.1.2'
  gem.add_dependency 'rmagick',             '2.12.2'
  gem.add_dependency 'httmultiparty',       '~> 0.3.8'
  gem.add_dependency 'will_paginate',       '~> 3.0.3'
  # gem.add_dependency 'locomotivecms_mounter' # remove from Gemfile before adding it here

  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'vcr'
  gem.add_development_dependency 'webmock', '~> 1.8.0'
  gem.add_development_dependency 'rack-test'
end
