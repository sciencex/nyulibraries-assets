$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "nyulibraries_assets/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "nyulibraries_assets"
  s.version     = NYULibrariesAssets::VERSION
  s.authors     = ["Scot Dalton"]
  s.email       = ["scot.dalton@nyu.edu"]
  s.homepage    = "https://github.com/NYULibraries/nyulibraries_assets"
  s.summary     = "Shared assets for http://library.nyu.edu and related sites based on Twitter Bootstrap."
  s.description = "Shared assets for http://library.nyu.edu and related sites based on Twitter Bootstrap. Requires Rails and/or Compass."

  s.files         = `git ls-files`.split($\)
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})

  s.add_dependency "compass"
  s.add_dependency "bootstrap-sass"
  s.add_development_dependency "coffee-script"
end