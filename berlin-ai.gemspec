# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require './lib/version'

Gem::Specification.new do |s|
  s.name         = "berlin-ai"
  s.version      = Berlin::AI::VERSION
  s.platform     = Gem::Platform::RUBY
  s.authors      = ["Christian Blais", "Guillaume Malette", "Jodi Giordano"]
  s.email        = ["christ.blais@gmail.com", "gmalette@gmail.com", "giordano.jodi@gmail.com"]
  s.homepage     = "http://github.com/thirdside/berlin-ai"
  s.files        = `git ls-files`.split("\n")
  s.executables  = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.summary      = "Berlin Artificial Intelligence"
  s.description  = "Berlin Artificial Intelligence"
  s.license      = "copyleft"

  s.add_dependency 'sinatra'
  s.add_dependency 'sinatra-contrib'
  s.add_dependency 'rackup'
  s.add_dependency 'puma'
  s.add_dependency 'rainbow', '~>1.1.4'

  s.add_development_dependency 'minitest'
  s.add_development_dependency 'pry'

  s.require_paths = ['lib', 'test']
end
