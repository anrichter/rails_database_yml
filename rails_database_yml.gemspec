# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "rails_database_yml/version"

Gem::Specification.new do |s|
  s.name        = "rails_database_yml"
  s.version     = RailsDatabaseYml::VERSION
  s.authors     = ["Andreas Richter"]
  s.email       = ["ar@anrichter.net"]
  s.homepage    = "https://github.com/anrichter/rails_database_yml"
  s.summary     = %q{Tasks and files to help the handle the database.yml in rails projects.}
  s.description = %q{This gem provide capistrano Tasks for the database.yml file in deployments of rails applications.}
  s.license     = 'MIT'

  s.rubyforge_project = "rails_database_yml"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
