# frozen_string_literal: false
# -*- ruby -*-
require 'uri'
CLI::OptionParser.accept(URI) {|s,| URI.parse(s) if s}
