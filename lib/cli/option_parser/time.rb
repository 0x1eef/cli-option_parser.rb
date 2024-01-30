# frozen_string_literal: false
require 'time'
CLI::OptionParser.accept(Time) do |s,|
  begin
    (Time.httpdate(s) rescue Time.parse(s)) if s
  rescue
    raise CLI::OptionParser::InvalidArgument, s
  end
end
