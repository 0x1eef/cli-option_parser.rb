# frozen_string_literal: false
# -*- ruby -*-

require 'shellwords'
require_relative 'option_parser'

OptionParser.accept(Shellwords) {|s,| Shellwords.shellwords(s)}
