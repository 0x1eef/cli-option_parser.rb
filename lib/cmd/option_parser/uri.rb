# frozen_string_literal: false
# -*- ruby -*-
require 'uri'
Cmd::OptionParser.accept(URI) {|s,| URI.parse(s) if s}
