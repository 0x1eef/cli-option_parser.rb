# frozen_string_literal: false
# -*- ruby -*-

require_relative 'option_parser'
require 'uri'

OptionParser.accept(URI) {|s,| URI.parse(s) if s}
