# frozen_string_literal: true

name = File.basename(__FILE__, ".gemspec")
version = ["lib", Array.new(name.count("-")+1, "..").join("/")].find do |dir|
  break File.foreach(File.join(__dir__, dir, "#{name.tr('-', '/')}.rb")) do |line|
    /^\s*OptionParser::Version\s*=\s*"(.*)"/ =~ line and break $1
  end rescue nil
end

Gem::Specification.new do |spec|
  spec.name          = name
  spec.version       = "0.1.1"
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
