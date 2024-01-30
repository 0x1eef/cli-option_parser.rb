# frozen_string_literal: false
# -*- ruby -*-
require 'shellwords'
CLI::OptionParser.accept(Shellwords) {|s,| Shellwords.shellwords(s)}
