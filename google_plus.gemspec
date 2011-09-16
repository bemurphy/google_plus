# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "google_plus/version"

Gem::Specification.new do |s|
  s.name        = "bemurphy-google_plus"
  s.version     = GooglePlus::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Brendon Murphy"]
  s.email       = ["xternal1+github@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Light wrapper for Google+ API}
  s.description = %q{Light wrapper for Google+ API, using HTTParty}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "httparty"
  s.add_dependency "hashie"
end
