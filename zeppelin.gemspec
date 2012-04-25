# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'zeppelin/version'

Gem::Specification.new do |s|
  s.name        = 'zeppelin'
  s.version     = Zeppelin::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Alexander Kern', 'James Herdman']
  s.email       = ['alex@kernul.com', 'james.herdman@me.com']
  s.homepage    = 'https://github.com/CapnKernul/zeppelin'
  s.summary     = %q{Urban Airship library for Ruby}
  s.description = %q{Ruby client for the Urban Airship Push Notification API}

  s.rubyforge_project = 'zeppelin'

  s.add_dependency 'faraday',    '~> 0.7.6'
  s.add_dependency 'multi_json', '~> 1.1'
  s.add_dependency 'patron',     '~> 0.4.18'

  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rake'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']
end
