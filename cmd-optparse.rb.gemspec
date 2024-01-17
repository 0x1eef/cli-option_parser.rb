# frozen_string_literal: true
require "./lib/cmd-optparse"

Gem::Specification.new do |spec|
  spec.name          =  File.basename(__FILE__, ".gemspec")
  spec.version       = Cmd::OptionParser::VERSION
  spec.authors       = ["0x1eef", "Nobu Nakada"]
  spec.email         = ["0x1eef@protonmail.com"]

  spec.summary       = %q{OptionParser is a class for command-line option analysis.}
  spec.description   = %q{OptionParser is a class for command-line option analysis.}
  spec.homepage      = "https://github.com/0x1eef/cmd-optparse.rb#readme"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.5.0")
  spec.licenses      = ["Ruby", "BSD-2-Clause"]

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage

  spec.files         = `git ls-files`.each_line.map { _1.chomp($/) }
  spec.rdoc_options  = ["--main=README.md", "--op=rdoc", "--page-dir=doc"]
  spec.bindir        = "exe"
  spec.executables   = []
  spec.require_paths = ["lib"]
end
