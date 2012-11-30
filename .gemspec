# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)
 
require 'bundler/version'
 
Gem::Specification.new do |s|
  s.name        = "until_it_works"
  s.version     = '1.0.0'
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Joshua Orion Skylar Hickman"]
  s.email       = ["josh@hickman.pro"]
  s.homepage    = "https://github.com/JoshuaOSHickman/until_it_works"
  s.summary     = "Common Ruby Retry Patterns"
 
  s.files        = Dir.glob("{bin,lib}/**/*")
  s.require_path = 'lib'
end
