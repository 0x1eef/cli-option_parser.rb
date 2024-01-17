# frozen_string_literal: false
# -*- ruby -*-
require 'shellwords'
Cmd::OptionParser.accept(Shellwords) {|s,| Shellwords.shellwords(s)}
