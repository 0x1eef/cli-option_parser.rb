# frozen_string_literal: false
# -*- ruby -*-
require 'shellwords'
OptionParser.accept(Shellwords) {|s,| Shellwords.shellwords(s)}
