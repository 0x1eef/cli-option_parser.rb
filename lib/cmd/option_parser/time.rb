# frozen_string_literal: false
require 'time'
Cmd::OptionParser.accept(Time) do |s,|
  begin
    (Time.httpdate(s) rescue Time.parse(s)) if s
  rescue
    raise Cmd::OptionParser::InvalidArgument, s
  end
end
