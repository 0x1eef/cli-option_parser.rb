# frozen_string_literal: false
require 'date'
Cmd::OptionParser.accept(DateTime) do |s,|
  begin
    DateTime.parse(s) if s
  rescue ArgumentError
    raise Cmd::OptionParser::InvalidArgument, s
  end
end
Cmd::OptionParser.accept(Date) do |s,|
  begin
    Date.parse(s) if s
  rescue ArgumentError
    raise Cmd::OptionParser::InvalidArgument, s
  end
end
