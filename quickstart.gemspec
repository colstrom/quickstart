# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: quickstart 0.8.0 ruby lib

Gem::Specification.new do |s|
  s.name = "quickstart"
  s.version = "0.8.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Chris Olstrom"]
  s.date = "2015-09-01"
  s.description = "Quickstart helps you start your next project, quickly."
  s.email = "chris@olstrom.com"
  s.executables = ["quickstart"]
  s.extra_rdoc_files = [
    "LICENSE",
    "README.md"
  ]
  s.files = [
    "Gemfile",
    "Gemfile.lock",
    "LICENSE",
    "README.md",
    "Rakefile",
    "VERSION",
    "bin/quickstart",
    "lib/quickstart.rb",
    "lib/quickstart/cli.rb",
    "lib/quickstart/template.rb",
    "spec/quickstart_spec.rb",
    "spec/spec_helper.rb"
  ]
  s.homepage = "http://github.com/colstrom/quickstart"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.5.1"
  s.summary = "Template-driven scaffolding."

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<contracts>, ["~> 0.11"])
      s.add_runtime_dependency(%q<erubis>, ["~> 2.7"])
      s.add_runtime_dependency(%q<escort>, ["~> 0.4"])
      s.add_runtime_dependency(%q<tilt>, ["~> 2.0"])
      s.add_development_dependency(%q<brakeman>, ["~> 3.1"])
      s.add_development_dependency(%q<bundler>, ["~> 1.10"])
      s.add_development_dependency(%q<flog>, ["~> 4.3"])
      s.add_development_dependency(%q<inch>, ["~> 0.6"])
      s.add_development_dependency(%q<jeweler>, ["~> 2.0"])
      s.add_development_dependency(%q<reek>, ["~> 3.1"])
      s.add_development_dependency(%q<roodi>, ["~> 5.0"])
      s.add_development_dependency(%q<rspec>, ["~> 3.3"])
      s.add_development_dependency(%q<rubocop>, ["~> 0.33"])
      s.add_development_dependency(%q<simplecov>, ["~> 0.10"])
      s.add_development_dependency(%q<yard>, ["~> 0.8"])
    else
      s.add_dependency(%q<contracts>, ["~> 0.11"])
      s.add_dependency(%q<erubis>, ["~> 2.7"])
      s.add_dependency(%q<escort>, ["~> 0.4"])
      s.add_dependency(%q<tilt>, ["~> 2.0"])
      s.add_dependency(%q<brakeman>, ["~> 3.1"])
      s.add_dependency(%q<bundler>, ["~> 1.10"])
      s.add_dependency(%q<flog>, ["~> 4.3"])
      s.add_dependency(%q<inch>, ["~> 0.6"])
      s.add_dependency(%q<jeweler>, ["~> 2.0"])
      s.add_dependency(%q<reek>, ["~> 3.1"])
      s.add_dependency(%q<roodi>, ["~> 5.0"])
      s.add_dependency(%q<rspec>, ["~> 3.3"])
      s.add_dependency(%q<rubocop>, ["~> 0.33"])
      s.add_dependency(%q<simplecov>, ["~> 0.10"])
      s.add_dependency(%q<yard>, ["~> 0.8"])
    end
  else
    s.add_dependency(%q<contracts>, ["~> 0.11"])
    s.add_dependency(%q<erubis>, ["~> 2.7"])
    s.add_dependency(%q<escort>, ["~> 0.4"])
    s.add_dependency(%q<tilt>, ["~> 2.0"])
    s.add_dependency(%q<brakeman>, ["~> 3.1"])
    s.add_dependency(%q<bundler>, ["~> 1.10"])
    s.add_dependency(%q<flog>, ["~> 4.3"])
    s.add_dependency(%q<inch>, ["~> 0.6"])
    s.add_dependency(%q<jeweler>, ["~> 2.0"])
    s.add_dependency(%q<reek>, ["~> 3.1"])
    s.add_dependency(%q<roodi>, ["~> 5.0"])
    s.add_dependency(%q<rspec>, ["~> 3.3"])
    s.add_dependency(%q<rubocop>, ["~> 0.33"])
    s.add_dependency(%q<simplecov>, ["~> 0.10"])
    s.add_dependency(%q<yard>, ["~> 0.8"])
  end
end
