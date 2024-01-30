# frozen_string_literal: false
require 'date'
CLI::OptionParser.accept(DateTime) do |s,|
  begin
    DateTime.parse(s) if s
  rescue ArgumentError
    raise CLI::OptionParser::InvalidArgument, s
  end
end
CLI::OptionParser.accept(Date) do |s,|
  begin
    Date.parse(s) if s
  rescue ArgumentError
    raise CLI::OptionParser::InvalidArgument, s
  end
end
