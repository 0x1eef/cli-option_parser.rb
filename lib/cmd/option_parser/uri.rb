# frozen_string_literal: false
# -*- ruby -*-
require 'uri'
OptionParser.accept(URI) {|s,| URI.parse(s) if s}
